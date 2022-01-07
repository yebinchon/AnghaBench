
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rb {int nr_entries; int subm; int mem; } ;


 unsigned int READ_ONCE (int ) ;
 unsigned int pblk_rb_ring_count (unsigned int,unsigned int,int ) ;

unsigned int pblk_rb_read_count(struct pblk_rb *rb)
{
 unsigned int mem = READ_ONCE(rb->mem);
 unsigned int subm = READ_ONCE(rb->subm);

 return pblk_rb_ring_count(mem, subm, rb->nr_entries);
}
