
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct gf100_grctx {TYPE_4__* gr; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct TYPE_8__ {TYPE_3__ base; } ;


 int mmio_wr32 (struct gf100_grctx*,int,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

void
gk104_grctx_generate_patch_ltc(struct gf100_grctx *info)
{
 struct nvkm_device *device = info->gr->base.engine.subdev.device;
 u32 data0 = nvkm_rd32(device, 0x17e91c);
 u32 data1 = nvkm_rd32(device, 0x17e920);

 mmio_wr32(info, 0x17e91c, data0);
 mmio_wr32(info, 0x17e920, data1);
}
