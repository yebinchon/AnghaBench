
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int rwb; } ;


 int pblk_err (struct pblk*,char*) ;
 int pblk_rb_free (int *) ;
 scalar_t__ pblk_rb_tear_down_check (int *) ;

__attribute__((used)) static void pblk_rwb_free(struct pblk *pblk)
{
 if (pblk_rb_tear_down_check(&pblk->rwb))
  pblk_err(pblk, "write buffer error on tear down\n");

 pblk_rb_free(&pblk->rwb);
}
