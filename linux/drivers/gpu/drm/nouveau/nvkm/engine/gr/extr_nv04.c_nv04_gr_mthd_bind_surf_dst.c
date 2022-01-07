
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_device {int dummy; } ;


 int nv04_gr_mthd_bind_class (struct nvkm_device*,int ) ;
 int nv04_gr_set_ctx_val (struct nvkm_device*,int ,int,int) ;

__attribute__((used)) static bool
nv04_gr_mthd_bind_surf_dst(struct nvkm_device *device, u32 inst, u32 data)
{
 switch (nv04_gr_mthd_bind_class(device, data)) {
 case 0x30:
  nv04_gr_set_ctx_val(device, inst, 0x02000000, 0);
  return 1;
 case 0x58:
  nv04_gr_set_ctx_val(device, inst, 0x02000000, 0x02000000);
  return 1;
 }
 return 0;
}
