
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvif_mem {int object; } ;


 int nvif_object_fini (int *) ;

void
nvif_mem_fini(struct nvif_mem *mem)
{
 nvif_object_fini(&mem->object);
}
