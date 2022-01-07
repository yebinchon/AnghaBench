
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int rl; } ;


 int pblk_line_close_meta_sync (struct pblk*) ;
 scalar_t__ pblk_rl_is_limit (int *) ;

__attribute__((used)) static void pblk_line_should_sync_meta(struct pblk *pblk)
{
 if (pblk_rl_is_limit(&pblk->rl))
  pblk_line_close_meta_sync(pblk);
}
