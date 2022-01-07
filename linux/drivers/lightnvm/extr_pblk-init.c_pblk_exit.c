
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int dummy; } ;


 int pblk_free (struct pblk*) ;
 int pblk_gc_exit (struct pblk*,int) ;
 int pblk_info (struct pblk*,char*,int ) ;
 int pblk_l2p_crc (struct pblk*) ;
 int pblk_tear_down (struct pblk*,int) ;

__attribute__((used)) static void pblk_exit(void *private, bool graceful)
{
 struct pblk *pblk = private;

 pblk_gc_exit(pblk, graceful);
 pblk_tear_down(pblk, graceful);





 pblk_free(pblk);
}
