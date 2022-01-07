
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line {int left_seblks; struct nvm_chk_meta* chks; } ;
struct pblk {int inflight_io; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;
struct nvm_rq {int ppa_addr; scalar_t__ error; } ;
struct nvm_chk_meta {int state; } ;


 int NVM_CHK_ST_FREE ;
 int NVM_CHK_ST_OFFLINE ;
 int PBLK_CHUNK_RESET_DONE ;
 int PBLK_CHUNK_RESET_FAILED ;
 int atomic_dec (int *) ;
 int pblk_disk_name (struct pblk*) ;
 int pblk_mark_bb (struct pblk*,struct pblk_line*,int ) ;
 struct pblk_line* pblk_ppa_to_line (struct pblk*,int ) ;
 int pblk_ppa_to_pos (struct nvm_geo*,int ) ;
 int trace_pblk_chunk_reset (int ,int *,int ) ;
 int trace_pblk_chunk_state (int ,int *,int ) ;

__attribute__((used)) static void __pblk_end_io_erase(struct pblk *pblk, struct nvm_rq *rqd)
{
 struct nvm_tgt_dev *dev = pblk->dev;
 struct nvm_geo *geo = &dev->geo;
 struct nvm_chk_meta *chunk;
 struct pblk_line *line;
 int pos;

 line = pblk_ppa_to_line(pblk, rqd->ppa_addr);
 pos = pblk_ppa_to_pos(geo, rqd->ppa_addr);
 chunk = &line->chks[pos];

 atomic_dec(&line->left_seblks);

 if (rqd->error) {
  trace_pblk_chunk_reset(pblk_disk_name(pblk),
    &rqd->ppa_addr, PBLK_CHUNK_RESET_FAILED);

  chunk->state = NVM_CHK_ST_OFFLINE;
  pblk_mark_bb(pblk, line, rqd->ppa_addr);
 } else {
  trace_pblk_chunk_reset(pblk_disk_name(pblk),
    &rqd->ppa_addr, PBLK_CHUNK_RESET_DONE);

  chunk->state = NVM_CHK_ST_FREE;
 }

 trace_pblk_chunk_state(pblk_disk_name(pblk), &rqd->ppa_addr,
    chunk->state);

 atomic_dec(&pblk->inflight_io);
}
