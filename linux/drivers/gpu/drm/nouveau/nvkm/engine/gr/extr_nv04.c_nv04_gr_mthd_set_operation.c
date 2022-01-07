
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_device {int dummy; } ;


 int nv04_gr_set_ctx1 (struct nvkm_device*,int,int,int) ;
 int nv04_gr_set_ctx_val (struct nvkm_device*,int,int ,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static bool
nv04_gr_mthd_set_operation(struct nvkm_device *device, u32 inst, u32 data)
{
 u8 class = nvkm_rd32(device, 0x700000) & 0x000000ff;
 if (data > 5)
  return 0;

 if (data > 2 && class < 0x40)
  return 0;
 nv04_gr_set_ctx1(device, inst, 0x00038000, data << 15);

 nv04_gr_set_ctx_val(device, inst, 0, 0);
 return 1;
}
