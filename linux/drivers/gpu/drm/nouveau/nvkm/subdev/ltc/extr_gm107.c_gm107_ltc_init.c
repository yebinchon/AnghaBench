
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_ltc {int tag_base; int ltc_nr; TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int ) ;

__attribute__((used)) static void
gm107_ltc_init(struct nvkm_ltc *ltc)
{
 struct nvkm_device *device = ltc->subdev.device;
 u32 lpg128 = !(nvkm_rd32(device, 0x100c80) & 0x00000001);

 nvkm_wr32(device, 0x17e27c, ltc->ltc_nr);
 nvkm_wr32(device, 0x17e278, ltc->tag_base);
 nvkm_mask(device, 0x17e264, 0x00000002, lpg128 ? 0x00000002 : 0x00000000);
}
