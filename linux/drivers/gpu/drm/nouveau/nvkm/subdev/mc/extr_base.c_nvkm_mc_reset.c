
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvkm_device {int dummy; } ;
typedef enum nvkm_devidx { ____Placeholder_nvkm_devidx } nvkm_devidx ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_mc_reset_mask (struct nvkm_device*,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

void
nvkm_mc_reset(struct nvkm_device *device, enum nvkm_devidx devidx)
{
 u64 pmc_enable = nvkm_mc_reset_mask(device, 1, devidx);
 if (pmc_enable) {
  nvkm_mask(device, 0x000200, pmc_enable, 0x00000000);
  nvkm_mask(device, 0x000200, pmc_enable, pmc_enable);
  nvkm_rd32(device, 0x000200);
 }
}
