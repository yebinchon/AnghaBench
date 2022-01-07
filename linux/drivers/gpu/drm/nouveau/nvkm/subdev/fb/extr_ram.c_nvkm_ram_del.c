
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_ram {int vram; TYPE_1__* func; } ;
struct TYPE_2__ {struct nvkm_ram* (* dtor ) (struct nvkm_ram*) ;} ;


 int WARN_ON (int) ;
 int kfree (struct nvkm_ram*) ;
 int nvkm_mm_fini (int *) ;
 struct nvkm_ram* stub1 (struct nvkm_ram*) ;

void
nvkm_ram_del(struct nvkm_ram **pram)
{
 struct nvkm_ram *ram = *pram;
 if (ram && !WARN_ON(!ram->func)) {
  if (ram->func->dtor)
   *pram = ram->func->dtor(ram);
  nvkm_mm_fini(&ram->vram);
  kfree(*pram);
  *pram = ((void*)0);
 }
}
