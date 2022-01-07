
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_device {int dummy; } ;


 int nv04_gr_mthd_bind_class (struct nvkm_device*,int ) ;
 int nv04_gr_set_ctx1 (struct nvkm_device*,int ,int,int) ;

__attribute__((used)) static bool
nv01_gr_mthd_bind_clip(struct nvkm_device *device, u32 inst, u32 data)
{
 switch (nv04_gr_mthd_bind_class(device, data)) {
 case 0x30:
  nv04_gr_set_ctx1(device, inst, 0x2000, 0);
  return 1;
 case 0x19:
  nv04_gr_set_ctx1(device, inst, 0x2000, 0x2000);
  return 1;
 }
 return 0;
}
