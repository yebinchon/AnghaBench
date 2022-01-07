
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct nvkm_device {int dummy; } ;


 int gf100_gr_mthd_set_shader_exceptions (struct nvkm_device*,int ) ;

__attribute__((used)) static bool
gf100_gr_mthd_sw(struct nvkm_device *device, u16 class, u32 mthd, u32 data)
{
 switch (class & 0x00ff) {
 case 0x97:
 case 0xc0:
  switch (mthd) {
  case 0x1528:
   gf100_gr_mthd_set_shader_exceptions(device, data);
   return 1;
  default:
   break;
  }
  break;
 default:
  break;
 }
 return 0;
}
