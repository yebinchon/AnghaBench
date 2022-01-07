
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_sec_meta {int lba; } ;
struct pblk_recov_alloc {void* dma_meta_list; void* dma_ppa_list; void* data; struct nvm_rq* rqd; void* meta_list; struct ppa_addr* ppa_list; } ;
struct pblk_line_meta {scalar_t__ smeta_sec; } ;
struct pblk_line {int nr_valid_lbas; int id; int blk_bitmap; TYPE_1__* emeta; } ;
struct pblk {int min_write_pgs; scalar_t__ capacity; int inflight_io; struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_rq {int nr_ppas; int is_seq; scalar_t__ error; void* dma_meta_list; void* dma_ppa_list; struct ppa_addr* ppa_list; void* meta_list; int opcode; int * bio; } ;
typedef void* dma_addr_t ;
typedef int __le64 ;
struct TYPE_2__ {int buf; } ;


 scalar_t__ ADDR_EMPTY ;
 int EINTR ;
 int NVM_OP_PREAD ;
 scalar_t__ NVM_RSP_WARN_HIGHECC ;
 int WARN_ON (int) ;
 struct ppa_addr addr_to_gen_ppa (struct pblk*,scalar_t__,int ) ;
 int atomic_dec (int *) ;
 int cpu_to_le64 (scalar_t__) ;
 int * emeta_to_lbas (struct pblk*,int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memset (struct nvm_rq*,int ,int ) ;
 struct ppa_addr* nvm_rq_to_ppa_list (struct nvm_rq*) ;
 int pblk_calc_secs (struct pblk*,scalar_t__,int ,int) ;
 int pblk_err (struct pblk*,char*,int) ;
 int pblk_g_rq_size ;
 struct pblk_sec_meta* pblk_get_meta (struct pblk*,void*,int) ;
 int pblk_get_packed_meta (struct pblk*,struct nvm_rq*) ;
 scalar_t__ pblk_io_aligned (struct pblk*,int) ;
 int pblk_line_is_full (struct pblk_line*) ;
 scalar_t__ pblk_line_smeta_start (struct pblk*,struct pblk_line*) ;
 scalar_t__ pblk_line_wps_are_unbalanced (struct pblk*,struct pblk_line*) ;
 int pblk_log_read_err (struct pblk*,struct nvm_rq*) ;
 int pblk_pad_distance (struct pblk*,struct pblk_line*) ;
 int pblk_ppa_to_pos (struct nvm_geo*,struct ppa_addr) ;
 int pblk_recov_pad_line (struct pblk*,struct pblk_line*,int) ;
 scalar_t__ pblk_sec_in_open_line (struct pblk*,struct pblk_line*) ;
 int pblk_submit_io_sync (struct pblk*,struct nvm_rq*,void*) ;
 int pblk_update_map (struct pblk*,scalar_t__,struct ppa_addr) ;
 int pblk_warn (struct pblk*,char*,int ) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int pblk_recov_scan_oob(struct pblk *pblk, struct pblk_line *line,
          struct pblk_recov_alloc p)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct pblk_line_meta *lm = &pblk->lm;
 struct nvm_geo *geo = &dev->geo;
 struct ppa_addr *ppa_list;
 void *meta_list;
 struct nvm_rq *rqd;
 void *data;
 dma_addr_t dma_ppa_list, dma_meta_list;
 __le64 *lba_list;
 u64 paddr = pblk_line_smeta_start(pblk, line) + lm->smeta_sec;
 bool padded = 0;
 int rq_ppas;
 int i, j;
 int ret;
 u64 left_ppas = pblk_sec_in_open_line(pblk, line) - lm->smeta_sec;

 if (pblk_line_wps_are_unbalanced(pblk, line))
  pblk_warn(pblk, "recovering unbalanced line (%d)\n", line->id);

 ppa_list = p.ppa_list;
 meta_list = p.meta_list;
 rqd = p.rqd;
 data = p.data;
 dma_ppa_list = p.dma_ppa_list;
 dma_meta_list = p.dma_meta_list;

 lba_list = emeta_to_lbas(pblk, line->emeta->buf);

next_rq:
 memset(rqd, 0, pblk_g_rq_size);

 rq_ppas = pblk_calc_secs(pblk, left_ppas, 0, 0);
 if (!rq_ppas)
  rq_ppas = pblk->min_write_pgs;

retry_rq:
 rqd->bio = ((void*)0);
 rqd->opcode = NVM_OP_PREAD;
 rqd->meta_list = meta_list;
 rqd->nr_ppas = rq_ppas;
 rqd->ppa_list = ppa_list;
 rqd->dma_ppa_list = dma_ppa_list;
 rqd->dma_meta_list = dma_meta_list;
 ppa_list = nvm_rq_to_ppa_list(rqd);

 if (pblk_io_aligned(pblk, rq_ppas))
  rqd->is_seq = 1;

 for (i = 0; i < rqd->nr_ppas; ) {
  struct ppa_addr ppa;
  int pos;

  ppa = addr_to_gen_ppa(pblk, paddr, line->id);
  pos = pblk_ppa_to_pos(geo, ppa);

  while (test_bit(pos, line->blk_bitmap)) {
   paddr += pblk->min_write_pgs;
   ppa = addr_to_gen_ppa(pblk, paddr, line->id);
   pos = pblk_ppa_to_pos(geo, ppa);
  }

  for (j = 0; j < pblk->min_write_pgs; j++, i++)
   ppa_list[i] =
    addr_to_gen_ppa(pblk, paddr + j, line->id);
 }

 ret = pblk_submit_io_sync(pblk, rqd, data);
 if (ret) {
  pblk_err(pblk, "I/O submission failed: %d\n", ret);
  return ret;
 }

 atomic_dec(&pblk->inflight_io);


 if (rqd->error && rqd->error != NVM_RSP_WARN_HIGHECC) {
  int pad_distance, ret;

  if (padded) {
   pblk_log_read_err(pblk, rqd);
   return -EINTR;
  }

  pad_distance = pblk_pad_distance(pblk, line);
  ret = pblk_recov_pad_line(pblk, line, pad_distance);
  if (ret) {
   return ret;
  }

  padded = 1;
  goto retry_rq;
 }

 pblk_get_packed_meta(pblk, rqd);

 for (i = 0; i < rqd->nr_ppas; i++) {
  struct pblk_sec_meta *meta = pblk_get_meta(pblk, meta_list, i);
  u64 lba = le64_to_cpu(meta->lba);

  lba_list[paddr++] = cpu_to_le64(lba);

  if (lba == ADDR_EMPTY || lba >= pblk->capacity)
   continue;

  line->nr_valid_lbas++;
  pblk_update_map(pblk, lba, ppa_list[i]);
 }

 left_ppas -= rq_ppas;
 if (left_ppas > 0)
  goto next_rq;





 return 0;
}
