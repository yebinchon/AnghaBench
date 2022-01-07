
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rb {int mem; } ;


 int __pblk_rb_may_write (struct pblk_rb*,unsigned int,unsigned int*) ;
 int pblk_rb_ptr_wrap (struct pblk_rb*,unsigned int,unsigned int) ;
 int smp_store_release (int *,int ) ;

__attribute__((used)) static int pblk_rb_may_write(struct pblk_rb *rb, unsigned int nr_entries,
        unsigned int *pos)
{
 if (!__pblk_rb_may_write(rb, nr_entries, pos))
  return 0;


 smp_store_release(&rb->mem, pblk_rb_ptr_wrap(rb, *pos, nr_entries));
 return 1;
}
