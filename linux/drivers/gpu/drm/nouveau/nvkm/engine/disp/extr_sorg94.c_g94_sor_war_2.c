
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


 int NVKM_DELAY ;
 int g94_sor_war_needed (struct nvkm_ior*) ;
 int nv50_ior_base (struct nvkm_ior*) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_usec (struct nvkm_device*,int,int ) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
g94_sor_war_2(struct nvkm_ior *sor)
{
 struct nvkm_device *device = sor->disp->engine.subdev.device;
 const u32 soff = nv50_ior_base(sor);

 if (!g94_sor_war_needed(sor))
  return;

 nvkm_mask(device, 0x00e840, 0x80000000, 0x80000000);
 nvkm_mask(device, 0x614300 + soff, 0x03000000, 0x03000000);
 nvkm_mask(device, 0x61c10c + soff, 0x00000001, 0x00000001);

 nvkm_mask(device, 0x61c00c + soff, 0x0f000000, 0x00000000);
 nvkm_mask(device, 0x61c008 + soff, 0xff000000, 0x14000000);
 nvkm_usec(device, 400, NVKM_DELAY);
 nvkm_mask(device, 0x61c008 + soff, 0xff000000, 0x00000000);
 nvkm_mask(device, 0x61c00c + soff, 0x0f000000, 0x01000000);

 if (nvkm_rd32(device, 0x61c004 + soff) & 0x00000001) {
  u32 seqctl = nvkm_rd32(device, 0x61c030 + soff);
  u32 pu_pc = seqctl & 0x0000000f;
  nvkm_wr32(device, 0x61c040 + soff + pu_pc * 4, 0x1f008000);
 }
}
