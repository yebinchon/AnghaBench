
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct nvkm_device* device; } ;
struct nvkm_therm {scalar_t__ ic; TYPE_1__ subdev; } ;
struct TYPE_4__ {int member_0; } ;
struct nvkm_i2c_bus_probe {int member_1; TYPE_2__ member_0; } ;
struct nvkm_i2c_bus {int dummy; } ;
struct nvkm_i2c {int dummy; } ;
struct nvkm_device {struct nvkm_i2c* i2c; struct nvkm_bios* bios; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_extdev_func {int addr; } ;


 int I2C_BOARD_INFO (char*,int) ;
 int NVBIOS_EXTDEV_ADT7473 ;
 int NVBIOS_EXTDEV_LM89 ;
 int NVKM_I2C_BUS_PRI ;
 struct nvkm_i2c_bus_probe* nv_board_infos ;
 int nvbios_extdev_find (struct nvkm_bios*,int ,struct nvbios_extdev_func*) ;
 scalar_t__ nvbios_extdev_skip_probe (struct nvkm_bios*) ;
 struct nvkm_i2c_bus* nvkm_i2c_bus_find (struct nvkm_i2c*,int ) ;
 int nvkm_i2c_bus_probe (struct nvkm_i2c_bus*,char*,struct nvkm_i2c_bus_probe*,int ,struct nvkm_therm*) ;
 int probe_monitoring_device ;

void
nvkm_therm_ic_ctor(struct nvkm_therm *therm)
{
 struct nvkm_device *device = therm->subdev.device;
 struct nvkm_bios *bios = device->bios;
 struct nvkm_i2c *i2c = device->i2c;
 struct nvkm_i2c_bus *bus;
 struct nvbios_extdev_func extdev_entry;

 bus = nvkm_i2c_bus_find(i2c, NVKM_I2C_BUS_PRI);
 if (!bus)
  return;

 if (!nvbios_extdev_find(bios, NVBIOS_EXTDEV_LM89, &extdev_entry)) {
  struct nvkm_i2c_bus_probe board[] = {
    { { I2C_BOARD_INFO("lm90", extdev_entry.addr >> 1) }, 0},
    { }
  };

  nvkm_i2c_bus_probe(bus, "monitoring device", board,
       probe_monitoring_device, therm);
  if (therm->ic)
   return;
 }

 if (!nvbios_extdev_find(bios, NVBIOS_EXTDEV_ADT7473, &extdev_entry)) {
  struct nvkm_i2c_bus_probe board[] = {
    { { I2C_BOARD_INFO("adt7473", extdev_entry.addr >> 1) }, 20 },
    { }
  };

  nvkm_i2c_bus_probe(bus, "monitoring device", board,
       probe_monitoring_device, therm);
  if (therm->ic)
   return;
 }

 if (nvbios_extdev_skip_probe(bios))
  return;




 nvkm_i2c_bus_probe(bus, "monitoring device", nv_board_infos,
      probe_monitoring_device, therm);
}
