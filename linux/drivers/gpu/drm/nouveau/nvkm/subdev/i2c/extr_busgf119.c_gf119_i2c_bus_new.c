
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_bus {int dummy; } ;
struct gf119_i2c_bus {int addr; struct nvkm_i2c_bus base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gf119_i2c_bus_func ;
 struct gf119_i2c_bus* kzalloc (int,int ) ;
 int nvkm_i2c_bus_ctor (int *,struct nvkm_i2c_pad*,int,struct nvkm_i2c_bus*) ;

int
gf119_i2c_bus_new(struct nvkm_i2c_pad *pad, int id, u8 drive,
   struct nvkm_i2c_bus **pbus)
{
 struct gf119_i2c_bus *bus;

 if (!(bus = kzalloc(sizeof(*bus), GFP_KERNEL)))
  return -ENOMEM;
 *pbus = &bus->base;

 nvkm_i2c_bus_ctor(&gf119_i2c_bus_func, pad, id, &bus->base);
 bus->addr = 0x00d014 + (drive * 0x20);
 return 0;
}
