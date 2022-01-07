
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_bus_func {int dummy; } ;
struct nvkm_bus {struct nvkm_bus_func const* func; int subdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_bus* kzalloc (int,int ) ;
 int nvkm_bus ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;

int
nvkm_bus_new_(const struct nvkm_bus_func *func, struct nvkm_device *device,
       int index, struct nvkm_bus **pbus)
{
 struct nvkm_bus *bus;
 if (!(bus = *pbus = kzalloc(sizeof(*bus), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_subdev_ctor(&nvkm_bus, device, index, &bus->subdev);
 bus->func = func;
 return 0;
}
