
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_ior {TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;


 int nvkm_mask (struct nvkm_device*,int const,int,int) ;

void
gv100_sor_dp_watermark(struct nvkm_ior *sor, int head, u8 watermark)
{
 struct nvkm_device *device = sor->disp->engine.subdev.device;
 const u32 hoff = head * 0x800;
 nvkm_mask(device, 0x616550 + hoff, 0x0c00003f, 0x08000000 | watermark);
}
