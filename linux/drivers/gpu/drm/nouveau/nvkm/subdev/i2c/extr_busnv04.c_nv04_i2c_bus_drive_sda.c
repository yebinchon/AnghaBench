
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_i2c_bus {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {TYPE_3__* pad; } ;
struct nv04_i2c_bus {int drive; TYPE_4__ base; } ;
struct TYPE_7__ {TYPE_2__* i2c; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;


 struct nv04_i2c_bus* nv04_i2c_bus (struct nvkm_i2c_bus*) ;
 int nvkm_rdvgac (struct nvkm_device*,int ,int ) ;
 int nvkm_wrvgac (struct nvkm_device*,int ,int ,int) ;

__attribute__((used)) static void
nv04_i2c_bus_drive_sda(struct nvkm_i2c_bus *base, int state)
{
 struct nv04_i2c_bus *bus = nv04_i2c_bus(base);
 struct nvkm_device *device = bus->base.pad->i2c->subdev.device;
 u8 val = nvkm_rdvgac(device, 0, bus->drive);
 if (state) val |= 0x10;
 else val &= 0xef;
 nvkm_wrvgac(device, 0, bus->drive, val | 0x01);
}
