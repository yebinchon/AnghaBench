
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_ram_func {int (* probe_fbpa_amount ) (struct nvkm_device*,int) ;} ;
struct nvkm_device {int dummy; } ;


 int BIT (int) ;
 int stub1 (struct nvkm_device*,int) ;

u32
gf100_ram_probe_fbp_amount(const struct nvkm_ram_func *func, u32 fbpao,
      struct nvkm_device *device, int fbp, int *pltcs)
{
 if (!(fbpao & BIT(fbp))) {
  *pltcs = 1;
  return func->probe_fbpa_amount(device, fbp);
 }
 return 0;
}
