
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_bus {int dummy; } ;
struct anx9805_pad {int addr; int base; } ;
struct anx9805_bus {int addr; struct nvkm_i2c_bus base; struct anx9805_pad* pad; } ;


 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int anx9805_bus_func ;
 struct anx9805_pad* anx9805_pad (struct nvkm_i2c_pad*) ;
 struct anx9805_bus* kzalloc (int,int ) ;
 int nvkm_i2c_bus_ctor (int *,int *,int,struct nvkm_i2c_bus*) ;

__attribute__((used)) static int
anx9805_bus_new(struct nvkm_i2c_pad *base, int id, u8 drive,
  struct nvkm_i2c_bus **pbus)
{
 struct anx9805_pad *pad = anx9805_pad(base);
 struct anx9805_bus *bus;
 int ret;

 if (!(bus = kzalloc(sizeof(*bus), GFP_KERNEL)))
  return -ENOMEM;
 *pbus = &bus->base;
 bus->pad = pad;

 ret = nvkm_i2c_bus_ctor(&anx9805_bus_func, &pad->base, id, &bus->base);
 if (ret)
  return ret;

 switch (pad->addr) {
 case 0x39: bus->addr = 0x3d; break;
 case 0x3b: bus->addr = 0x3f; break;
 default:
  return -ENOSYS;
 }

 return 0;
}
