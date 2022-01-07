
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_device {int dummy; } ;


 int nv04_gr_mthd_surf3d_clip_h (struct nvkm_device*,int,int) ;
 int nv04_gr_mthd_surf3d_clip_v (struct nvkm_device*,int,int) ;

__attribute__((used)) static bool
nv04_gr_mthd_surf3d(struct nvkm_device *device, u32 inst, u32 mthd, u32 data)
{
 bool (*func)(struct nvkm_device *, u32, u32);
 switch (mthd) {
 case 0x02f8: func = nv04_gr_mthd_surf3d_clip_h; break;
 case 0x02fc: func = nv04_gr_mthd_surf3d_clip_v; break;
 default:
  return 0;
 }
 return func(device, inst, data);
}
