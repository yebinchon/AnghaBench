
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static u8
nv04_gr_mthd_bind_class(struct nvkm_device *device, u32 inst)
{
 return nvkm_rd32(device, 0x700000 + (inst << 4));
}
