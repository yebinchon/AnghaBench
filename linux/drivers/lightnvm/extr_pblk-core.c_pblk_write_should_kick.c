
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {unsigned int min_write_pgs_data; int rwb; } ;


 unsigned int pblk_rb_read_count (int *) ;
 int pblk_write_kick (struct pblk*) ;

void pblk_write_should_kick(struct pblk *pblk)
{
 unsigned int secs_avail = pblk_rb_read_count(&pblk->rwb);

 if (secs_avail >= pblk->min_write_pgs_data)
  pblk_write_kick(pblk);
}
