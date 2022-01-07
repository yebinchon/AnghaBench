
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_device {int dummy; } ;


 int nv01_gr_mthd_bind_clip (struct nvkm_device*,int,int) ;
 int nv04_gr_mthd_bind_surf_color (struct nvkm_device*,int,int) ;
 int nv04_gr_mthd_bind_surf_zeta (struct nvkm_device*,int,int) ;

__attribute__((used)) static bool
nv03_gr_mthd_ttri(struct nvkm_device *device, u32 inst, u32 mthd, u32 data)
{
 bool (*func)(struct nvkm_device *, u32, u32);
 switch (mthd) {
 case 0x0188: func = nv01_gr_mthd_bind_clip; break;
 case 0x018c: func = nv04_gr_mthd_bind_surf_color; break;
 case 0x0190: func = nv04_gr_mthd_bind_surf_zeta; break;
 default:
  return 0;
 }
 return func(device, inst, data);
}
