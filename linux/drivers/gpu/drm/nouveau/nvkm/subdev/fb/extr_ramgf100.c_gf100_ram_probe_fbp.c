
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_ram_func {int (* probe_fbp_amount ) (struct nvkm_ram_func const*,int ,struct nvkm_device*,int,int*) ;} ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;
 int stub1 (struct nvkm_ram_func const*,int ,struct nvkm_device*,int,int*) ;

u32
gf100_ram_probe_fbp(const struct nvkm_ram_func *func,
      struct nvkm_device *device, int fbp, int *pltcs)
{
 u32 fbpao = nvkm_rd32(device, 0x022554);
 return func->probe_fbp_amount(func, fbpao, device, fbp, pltcs);
}
