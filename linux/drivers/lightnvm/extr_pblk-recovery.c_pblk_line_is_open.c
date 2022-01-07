
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_line_meta {int blk_per_line; } ;
struct pblk_line {TYPE_1__* chks; } ;
struct pblk {struct pblk_line_meta lm; } ;
struct TYPE_2__ {int state; } ;


 int NVM_CHK_ST_OPEN ;

__attribute__((used)) static bool pblk_line_is_open(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_line_meta *lm = &pblk->lm;
 int i;

 for (i = 0; i < lm->blk_per_line; i++)
  if (line->chks[i].state & NVM_CHK_ST_OPEN)
   return 1;

 return 0;
}
