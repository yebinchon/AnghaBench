
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line_meta {size_t smeta_sec; } ;
struct pblk_line {size_t emeta_ssec; scalar_t__ left_msecs; int id; int lock; int vsc; int invalid_bitmap; int blk_bitmap; struct pblk_emeta* emeta; } ;
struct pblk_emeta {struct line_emeta* buf; } ;
struct pblk {struct pblk_line_meta lm; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct line_emeta {int nr_valid_lbas; } ;
typedef int __le64 ;


 scalar_t__ ADDR_EMPTY ;
 int WARN_ONCE (int,char*) ;
 struct ppa_addr addr_to_gen_ppa (struct pblk*,size_t,int ) ;
 int * emeta_to_lbas (struct pblk*,struct line_emeta*) ;
 int le32_add_cpu (int ,int) ;
 scalar_t__ le64_to_cpu (int ) ;
 int pblk_err (struct pblk*,char*,int ,size_t,size_t) ;
 size_t pblk_line_smeta_start (struct pblk*,struct pblk_line*) ;
 int pblk_ppa_to_pos (struct nvm_geo*,struct ppa_addr) ;
 int pblk_update_map (struct pblk*,scalar_t__,struct ppa_addr) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_set_bit (size_t,int ) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int pblk_recov_l2p_from_emeta(struct pblk *pblk, struct pblk_line *line)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct pblk_line_meta *lm = &pblk->lm;
 struct pblk_emeta *emeta = line->emeta;
 struct line_emeta *emeta_buf = emeta->buf;
 __le64 *lba_list;
 u64 data_start, data_end;
 u64 nr_valid_lbas, nr_lbas = 0;
 u64 i;

 lba_list = emeta_to_lbas(pblk, emeta_buf);
 if (!lba_list)
  return 1;

 data_start = pblk_line_smeta_start(pblk, line) + lm->smeta_sec;
 data_end = line->emeta_ssec;
 nr_valid_lbas = le64_to_cpu(emeta_buf->nr_valid_lbas);

 for (i = data_start; i < data_end; i++) {
  struct ppa_addr ppa;
  int pos;

  ppa = addr_to_gen_ppa(pblk, i, line->id);
  pos = pblk_ppa_to_pos(geo, ppa);


  if (test_bit(pos, line->blk_bitmap))
   continue;

  if (le64_to_cpu(lba_list[i]) == ADDR_EMPTY) {
   spin_lock(&line->lock);
   if (test_and_set_bit(i, line->invalid_bitmap))
    WARN_ONCE(1, "pblk: rec. double invalidate:\n");
   else
    le32_add_cpu(line->vsc, -1);
   spin_unlock(&line->lock);

   continue;
  }

  pblk_update_map(pblk, le64_to_cpu(lba_list[i]), ppa);
  nr_lbas++;
 }

 if (nr_valid_lbas != nr_lbas)
  pblk_err(pblk, "line %d - inconsistent lba list(%llu/%llu)\n",
    line->id, nr_valid_lbas, nr_lbas);

 line->left_msecs = 0;

 return 0;
}
