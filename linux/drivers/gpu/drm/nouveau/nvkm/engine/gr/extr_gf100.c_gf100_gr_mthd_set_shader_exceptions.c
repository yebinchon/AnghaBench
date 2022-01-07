
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_device {int dummy; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gf100_gr_mthd_set_shader_exceptions(struct nvkm_device *device, u32 data)
{
 nvkm_wr32(device, 0x419e44, data ? 0xffffffff : 0x00000000);
 nvkm_wr32(device, 0x419e4c, data ? 0xffffffff : 0x00000000);
}
