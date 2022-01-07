
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_devinit {TYPE_1__* func; } ;
struct TYPE_2__ {int (* mmio ) (struct nvkm_devinit*,int ) ;} ;


 int stub1 (struct nvkm_devinit*,int ) ;

u32
nvkm_devinit_mmio(struct nvkm_devinit *init, u32 addr)
{
 if (init->func->mmio)
  addr = init->func->mmio(init, addr);
 return addr;
}
