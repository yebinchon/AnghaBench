
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_mc {TYPE_1__* func; } ;
struct nvkm_device {struct nvkm_mc* mc; } ;
struct TYPE_2__ {int (* intr_rearm ) (struct nvkm_mc*) ;} ;


 scalar_t__ likely (struct nvkm_mc*) ;
 int stub1 (struct nvkm_mc*) ;

void
nvkm_mc_intr_rearm(struct nvkm_device *device)
{
 struct nvkm_mc *mc = device->mc;
 if (likely(mc))
  mc->func->intr_rearm(mc);
}
