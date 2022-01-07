
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rb {int subm; } ;


 unsigned int READ_ONCE (int ) ;
 int pblk_rb_ptr_wrap (struct pblk_rb*,unsigned int,unsigned int) ;
 int smp_store_release (int *,int ) ;

unsigned int pblk_rb_read_commit(struct pblk_rb *rb, unsigned int nr_entries)
{
 unsigned int subm;

 subm = READ_ONCE(rb->subm);

 smp_store_release(&rb->subm, pblk_rb_ptr_wrap(rb, subm, nr_entries));

 return subm;
}
