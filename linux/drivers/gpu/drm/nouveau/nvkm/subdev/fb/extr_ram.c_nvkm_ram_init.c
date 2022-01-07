
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_ram {TYPE_1__* func; } ;
struct TYPE_2__ {int (* init ) (struct nvkm_ram*) ;} ;


 int stub1 (struct nvkm_ram*) ;

int
nvkm_ram_init(struct nvkm_ram *ram)
{
 if (ram->func->init)
  return ram->func->init(ram);
 return 0;
}
