
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_bus {int dummy; } ;


 int nv31_bus ;
 int nvkm_bus_new_ (int *,struct nvkm_device*,int,struct nvkm_bus**) ;

int
nv31_bus_new(struct nvkm_device *device, int index, struct nvkm_bus **pbus)
{
 return nvkm_bus_new_(&nv31_bus, device, index, pbus);
}
