
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_ltc {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int const) ;

void
gf100_ltc_zbc_clear_color(struct nvkm_ltc *ltc, int i, const u32 color[4])
{
 struct nvkm_device *device = ltc->subdev.device;
 nvkm_mask(device, 0x17ea44, 0x0000000f, i);
 nvkm_wr32(device, 0x17ea48, color[0]);
 nvkm_wr32(device, 0x17ea4c, color[1]);
 nvkm_wr32(device, 0x17ea50, color[2]);
 nvkm_wr32(device, 0x17ea54, color[3]);
}
