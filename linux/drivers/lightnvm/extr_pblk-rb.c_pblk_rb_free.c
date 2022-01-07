
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rb {int entries; } ;


 int pblk_rb_data_free (struct pblk_rb*) ;
 int vfree (int ) ;

void pblk_rb_free(struct pblk_rb *rb)
{
 pblk_rb_data_free(rb);
 vfree(rb->entries);
}
