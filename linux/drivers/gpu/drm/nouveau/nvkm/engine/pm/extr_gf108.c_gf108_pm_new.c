
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pm {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gf100_pm_new_ (int *,struct nvkm_device*,int,struct nvkm_pm**) ;
 int gf108_pm ;

int
gf108_pm_new(struct nvkm_device *device, int index, struct nvkm_pm **ppm)
{
 return gf100_pm_new_(&gf108_pm, device, index, ppm);
}
