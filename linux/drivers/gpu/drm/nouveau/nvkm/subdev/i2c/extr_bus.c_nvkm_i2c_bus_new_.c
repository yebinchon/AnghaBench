
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_bus_func {int dummy; } ;
struct nvkm_i2c_bus {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_i2c_bus* kzalloc (int,int ) ;
 int nvkm_i2c_bus_ctor (struct nvkm_i2c_bus_func const*,struct nvkm_i2c_pad*,int,struct nvkm_i2c_bus*) ;

int
nvkm_i2c_bus_new_(const struct nvkm_i2c_bus_func *func,
    struct nvkm_i2c_pad *pad, int id,
    struct nvkm_i2c_bus **pbus)
{
 if (!(*pbus = kzalloc(sizeof(**pbus), GFP_KERNEL)))
  return -ENOMEM;
 return nvkm_i2c_bus_ctor(func, pad, id, *pbus);
}
