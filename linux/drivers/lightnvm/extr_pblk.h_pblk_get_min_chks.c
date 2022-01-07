
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_meta {unsigned int blk_per_line; } ;
struct pblk {int op; struct pblk_line_meta lm; } ;


 unsigned int DIV_ROUND_UP (int,int ) ;

__attribute__((used)) static inline unsigned int pblk_get_min_chks(struct pblk *pblk)
{
 struct pblk_line_meta *lm = &pblk->lm;




 return DIV_ROUND_UP(100, pblk->op) * lm->blk_per_line;
}
