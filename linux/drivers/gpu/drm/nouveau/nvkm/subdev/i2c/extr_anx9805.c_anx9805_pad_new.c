
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_i2c_pad {int dummy; } ;
struct nvkm_i2c_bus {TYPE_1__* pad; } ;
struct anx9805_pad {int addr; struct nvkm_i2c_bus* bus; struct nvkm_i2c_pad base; } ;
struct TYPE_2__ {int i2c; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int anx9805_pad_func ;
 struct anx9805_pad* kzalloc (int,int ) ;
 int nvkm_i2c_pad_ctor (int *,int ,int,struct nvkm_i2c_pad*) ;

int
anx9805_pad_new(struct nvkm_i2c_bus *bus, int id, u8 addr,
  struct nvkm_i2c_pad **ppad)
{
 struct anx9805_pad *pad;

 if (!(pad = kzalloc(sizeof(*pad), GFP_KERNEL)))
  return -ENOMEM;
 *ppad = &pad->base;

 nvkm_i2c_pad_ctor(&anx9805_pad_func, bus->pad->i2c, id, &pad->base);
 pad->bus = bus;
 pad->addr = addr;
 return 0;
}
