
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pblk_line_meta {int blk_per_line; scalar_t__ smeta_sec; } ;
struct pblk_line {int id; struct nvm_chk_meta* chks; int blk_bitmap; } ;
struct pblk {struct pblk_line_meta lm; } ;
struct nvm_chk_meta {int state; scalar_t__ wp; } ;


 int NVM_CHK_ST_OFFLINE ;
 int bitmap_weight (int ,int) ;
 int pblk_err (struct pblk*,char*,int ) ;
 int pblk_update_line_wp (struct pblk*,struct pblk_line*,scalar_t__) ;

__attribute__((used)) static u64 pblk_sec_in_open_line(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_line_meta *lm = &pblk->lm;
 int nr_bb = bitmap_weight(line->blk_bitmap, lm->blk_per_line);
 u64 written_secs = 0;
 int valid_chunks = 0;
 int i;

 for (i = 0; i < lm->blk_per_line; i++) {
  struct nvm_chk_meta *chunk = &line->chks[i];

  if (chunk->state & NVM_CHK_ST_OFFLINE)
   continue;

  written_secs += chunk->wp;
  valid_chunks++;
 }

 if (lm->blk_per_line - nr_bb != valid_chunks)
  pblk_err(pblk, "recovery line %d is bad\n", line->id);

 pblk_update_line_wp(pblk, line, written_secs - lm->smeta_sec);

 return written_secs;
}
