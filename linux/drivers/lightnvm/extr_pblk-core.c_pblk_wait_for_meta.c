
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int inflight_io; } ;


 int atomic_read (int *) ;
 int schedule () ;

__attribute__((used)) static void pblk_wait_for_meta(struct pblk *pblk)
{
 do {
  if (!atomic_read(&pblk->inflight_io))
   break;

  schedule();
 } while (1);
}
