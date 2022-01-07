
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct nvkm_mc_map {int unit; scalar_t__ stat; int noauto; } ;
struct nvkm_mc {TYPE_1__* func; } ;
struct nvkm_device {struct nvkm_mc* mc; } ;
typedef enum nvkm_devidx { ____Placeholder_nvkm_devidx } nvkm_devidx ;
struct TYPE_2__ {struct nvkm_mc_map* reset; } ;


 scalar_t__ likely (struct nvkm_mc*) ;
 scalar_t__ nvkm_top_reset (struct nvkm_device*,int) ;

__attribute__((used)) static u32
nvkm_mc_reset_mask(struct nvkm_device *device, bool isauto,
     enum nvkm_devidx devidx)
{
 struct nvkm_mc *mc = device->mc;
 const struct nvkm_mc_map *map;
 u64 pmc_enable = 0;
 if (likely(mc)) {
  if (!(pmc_enable = nvkm_top_reset(device, devidx))) {
   for (map = mc->func->reset; map && map->stat; map++) {
    if (!isauto || !map->noauto) {
     if (map->unit == devidx) {
      pmc_enable = map->stat;
      break;
     }
    }
   }
  }
 }
 return pmc_enable;
}
