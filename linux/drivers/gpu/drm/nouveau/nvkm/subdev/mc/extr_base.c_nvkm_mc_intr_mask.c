
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_mc_map {int unit; scalar_t__ stat; } ;
struct nvkm_mc {TYPE_1__* func; } ;
struct nvkm_device {struct nvkm_mc* mc; } ;
typedef enum nvkm_devidx { ____Placeholder_nvkm_devidx } nvkm_devidx ;
struct TYPE_2__ {int (* intr_mask ) (struct nvkm_mc*,scalar_t__,scalar_t__) ;struct nvkm_mc_map* intr; } ;


 scalar_t__ likely (struct nvkm_mc*) ;
 scalar_t__ nvkm_top_intr_mask (struct nvkm_device*,int) ;
 int stub1 (struct nvkm_mc*,scalar_t__,scalar_t__) ;

void
nvkm_mc_intr_mask(struct nvkm_device *device, enum nvkm_devidx devidx, bool en)
{
 struct nvkm_mc *mc = device->mc;
 const struct nvkm_mc_map *map;
 if (likely(mc) && mc->func->intr_mask) {
  u32 mask = nvkm_top_intr_mask(device, devidx);
  for (map = mc->func->intr; !mask && map->stat; map++) {
   if (map->unit == devidx)
    mask = map->stat;
  }
  mc->func->intr_mask(mc, mask, en ? mask : 0);
 }
}
