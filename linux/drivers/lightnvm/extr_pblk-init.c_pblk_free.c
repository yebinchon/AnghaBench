
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int dummy; } ;


 int kfree (struct pblk*) ;
 int pblk_core_free (struct pblk*) ;
 int pblk_l2p_free (struct pblk*) ;
 int pblk_lines_free (struct pblk*) ;
 int pblk_rwb_free (struct pblk*) ;

__attribute__((used)) static void pblk_free(struct pblk *pblk)
{
 pblk_lines_free(pblk);
 pblk_l2p_free(pblk);
 pblk_rwb_free(pblk);
 pblk_core_free(pblk);

 kfree(pblk);
}
