
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_ior {TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;


 int nv50_dac_power_wait (struct nvkm_device*,int const) ;
 int nv50_ior_base (struct nvkm_ior*) ;
 int nvkm_mask (struct nvkm_device*,int const,int const,int const) ;

void
nv50_dac_power(struct nvkm_ior *dac, bool normal, bool pu,
        bool data, bool vsync, bool hsync)
{
 struct nvkm_device *device = dac->disp->engine.subdev.device;
 const u32 doff = nv50_ior_base(dac);
 const u32 shift = normal ? 0 : 16;
 const u32 state = 0x80000000 | (0x00000040 * ! pu |
     0x00000010 * ! data |
     0x00000004 * ! vsync |
     0x00000001 * ! hsync) << shift;
 const u32 field = 0xc0000000 | (0x00000055 << shift);

 nv50_dac_power_wait(device, doff);
 nvkm_mask(device, 0x61a004 + doff, field, state);
 nv50_dac_power_wait(device, doff);
}
