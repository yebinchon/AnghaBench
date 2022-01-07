
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rb {int nr_entries; int sync; int mem; } ;


 unsigned int READ_ONCE (int ) ;
 unsigned int pblk_rb_ring_space (struct pblk_rb*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static unsigned int pblk_rb_space(struct pblk_rb *rb)
{
 unsigned int mem = READ_ONCE(rb->mem);
 unsigned int sync = READ_ONCE(rb->sync);

 return pblk_rb_ring_space(rb, mem, sync, rb->nr_entries);
}
