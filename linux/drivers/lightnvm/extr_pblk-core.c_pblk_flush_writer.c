
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int rwb; } ;


 int pblk_rb_flush (int *) ;
 int pblk_rb_sync_count (int *) ;
 int pblk_write_kick (struct pblk*) ;
 int schedule () ;

__attribute__((used)) static void pblk_flush_writer(struct pblk *pblk)
{
 pblk_rb_flush(&pblk->rwb);
 do {
  if (!pblk_rb_sync_count(&pblk->rwb))
   break;

  pblk_write_kick(pblk);
  schedule();
 } while (1);
}
