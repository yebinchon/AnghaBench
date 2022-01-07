
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct nvkm_i2c_pad {TYPE_1__* i2c; } ;
struct nvkm_i2c_bus {int dummy; } ;
struct nv50_i2c_bus {int addr; int data; struct nvkm_i2c_bus base; } ;
struct TYPE_2__ {int subdev; } ;


 size_t ARRAY_SIZE (int const*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv50_i2c_bus* kzalloc (int,int ) ;
 int nv50_i2c_bus_func ;
 int nvkm_i2c_bus_ctor (int *,struct nvkm_i2c_pad*,int,struct nvkm_i2c_bus*) ;
 int nvkm_warn (int *,char*,size_t) ;

int
nv50_i2c_bus_new(struct nvkm_i2c_pad *pad, int id, u8 drive,
   struct nvkm_i2c_bus **pbus)
{
 static const u32 addr[] = {
  0x00e138, 0x00e150, 0x00e168, 0x00e180,
  0x00e254, 0x00e274, 0x00e764, 0x00e780,
  0x00e79c, 0x00e7b8
 };
 struct nv50_i2c_bus *bus;

 if (drive >= ARRAY_SIZE(addr)) {
  nvkm_warn(&pad->i2c->subdev, "bus %d unknown\n", drive);
  return -ENODEV;
 }

 if (!(bus = kzalloc(sizeof(*bus), GFP_KERNEL)))
  return -ENOMEM;
 *pbus = &bus->base;

 nvkm_i2c_bus_ctor(&nv50_i2c_bus_func, pad, id, &bus->base);
 bus->addr = addr[drive];
 bus->data = 0x00000007;
 return 0;
}
