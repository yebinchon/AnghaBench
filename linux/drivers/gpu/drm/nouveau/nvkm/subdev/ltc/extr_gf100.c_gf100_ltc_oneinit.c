
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_ltc {int lts_nr; int ltc_nr; TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int gf100_ltc_oneinit_tag_ram (struct nvkm_ltc*) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

int
gf100_ltc_oneinit(struct nvkm_ltc *ltc)
{
 struct nvkm_device *device = ltc->subdev.device;
 const u32 parts = nvkm_rd32(device, 0x022438);
 const u32 mask = nvkm_rd32(device, 0x022554);
 const u32 slice = nvkm_rd32(device, 0x17e8dc) >> 28;
 int i;

 for (i = 0; i < parts; i++) {
  if (!(mask & (1 << i)))
   ltc->ltc_nr++;
 }
 ltc->lts_nr = slice;

 return gf100_ltc_oneinit_tag_ram(ltc);
}
