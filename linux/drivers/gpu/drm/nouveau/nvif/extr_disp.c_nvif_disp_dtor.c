
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvif_disp {int object; } ;


 int nvif_object_fini (int *) ;

void
nvif_disp_dtor(struct nvif_disp *disp)
{
 nvif_object_fini(&disp->object);
}
