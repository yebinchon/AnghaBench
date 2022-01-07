
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pm {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int g84_pm ;
 int nv40_pm_new_ (int ,struct nvkm_device*,int,struct nvkm_pm**) ;

int
g84_pm_new(struct nvkm_device *device, int index, struct nvkm_pm **ppm)
{
 return nv40_pm_new_(g84_pm, device, index, ppm);
}
