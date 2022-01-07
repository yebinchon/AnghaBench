
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_mc {TYPE_1__* func; } ;
struct nvkm_device {struct nvkm_mc* mc; } ;
struct TYPE_2__ {int (* unk260 ) (struct nvkm_mc*,int ) ;} ;


 scalar_t__ likely (struct nvkm_mc*) ;
 int stub1 (struct nvkm_mc*,int ) ;

void
nvkm_mc_unk260(struct nvkm_device *device, u32 data)
{
 struct nvkm_mc *mc = device->mc;
 if (likely(mc) && mc->func->unk260)
  mc->func->unk260(mc, data);
}
