
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_device {int dummy; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static bool
nv04_gr_mthd_surf3d_clip_h(struct nvkm_device *device, u32 inst, u32 data)
{
 u32 min = data & 0xffff, max;
 u32 w = data >> 16;
 if (min & 0x8000)

  return 0;
 if (w & 0x8000)

  w |= 0xffff0000;
 max = min + w;
 max &= 0x3ffff;
 nvkm_wr32(device, 0x40053c, min);
 nvkm_wr32(device, 0x400544, max);
 return 1;
}
