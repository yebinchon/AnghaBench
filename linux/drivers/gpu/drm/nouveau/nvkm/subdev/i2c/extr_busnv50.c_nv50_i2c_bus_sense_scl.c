
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_i2c_bus {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {TYPE_3__* pad; } ;
struct nv50_i2c_bus {int addr; TYPE_4__ base; } ;
struct TYPE_7__ {TYPE_2__* i2c; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;


 struct nv50_i2c_bus* nv50_i2c_bus (struct nvkm_i2c_bus*) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;

__attribute__((used)) static int
nv50_i2c_bus_sense_scl(struct nvkm_i2c_bus *base)
{
 struct nv50_i2c_bus *bus = nv50_i2c_bus(base);
 struct nvkm_device *device = bus->base.pad->i2c->subdev.device;
 return !!(nvkm_rd32(device, bus->addr) & 0x00000001);
}
