
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf100_gr_fuc {int * data; } ;


 int kfree (int *) ;

void
gf100_gr_dtor_fw(struct gf100_gr_fuc *fuc)
{
 kfree(fuc->data);
 fuc->data = ((void*)0);
}
