
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rb {int nr_entries; } ;



unsigned int pblk_rb_ptr_wrap(struct pblk_rb *rb, unsigned int p,
         unsigned int nr_entries)
{
 return (p + nr_entries) & (rb->nr_entries - 1);
}
