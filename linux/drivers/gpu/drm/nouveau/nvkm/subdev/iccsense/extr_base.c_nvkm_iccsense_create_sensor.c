
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_iccsense_sensor {int type; int config; void* addr; int * i2c; void* id; int head; } ;
struct nvkm_iccsense {int data_valid; int sensors; struct nvkm_subdev subdev; } ;
struct nvkm_i2c_bus {int i2c; } ;
struct nvkm_i2c {int dummy; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_extdev_func {int type; int addr; scalar_t__ bus; } ;
struct TYPE_2__ {struct nvkm_i2c* i2c; struct nvkm_bios* bios; } ;


 int GFP_KERNEL ;
 int NVBIOS_EXTDEV_INA209 ;
 int NVBIOS_EXTDEV_INA219 ;
 int NVBIOS_EXTDEV_INA3221 ;
 int NVKM_I2C_BUS_PRI ;
 int NVKM_I2C_BUS_SEC ;
 struct nvkm_iccsense_sensor* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ nvbios_extdev_parse (struct nvkm_bios*,void*,struct nvbios_extdev_func*) ;
 int nvkm_error (struct nvkm_subdev*,char*,int) ;
 struct nvkm_i2c_bus* nvkm_i2c_bus_find (struct nvkm_i2c*,int ) ;
 int nvkm_iccsense_validate_device (int *,void*,int) ;
 int nvkm_warn (struct nvkm_subdev*,char*,void*) ;

__attribute__((used)) static struct nvkm_iccsense_sensor*
nvkm_iccsense_create_sensor(struct nvkm_iccsense *iccsense, u8 id)
{
 struct nvkm_subdev *subdev = &iccsense->subdev;
 struct nvkm_bios *bios = subdev->device->bios;
 struct nvkm_i2c *i2c = subdev->device->i2c;
 struct nvbios_extdev_func extdev;
 struct nvkm_i2c_bus *i2c_bus;
 struct nvkm_iccsense_sensor *sensor;
 u8 addr;

 if (!i2c || !bios || nvbios_extdev_parse(bios, id, &extdev))
  return ((void*)0);

 if (extdev.type == 0xff)
  return ((void*)0);

 if (extdev.type != NVBIOS_EXTDEV_INA209 &&
     extdev.type != NVBIOS_EXTDEV_INA219 &&
     extdev.type != NVBIOS_EXTDEV_INA3221) {
  iccsense->data_valid = 0;
  nvkm_error(subdev, "Unknown sensor type %x, power reading "
      "disabled\n", extdev.type);
  return ((void*)0);
 }

 if (extdev.bus)
  i2c_bus = nvkm_i2c_bus_find(i2c, NVKM_I2C_BUS_SEC);
 else
  i2c_bus = nvkm_i2c_bus_find(i2c, NVKM_I2C_BUS_PRI);
 if (!i2c_bus)
  return ((void*)0);

 addr = extdev.addr >> 1;
 if (!nvkm_iccsense_validate_device(&i2c_bus->i2c, addr,
        extdev.type)) {
  iccsense->data_valid = 0;
  nvkm_warn(subdev, "found invalid sensor id: %i, power reading"
     "might be invalid\n", id);
  return ((void*)0);
 }

 sensor = kmalloc(sizeof(*sensor), GFP_KERNEL);
 if (!sensor)
  return ((void*)0);

 list_add_tail(&sensor->head, &iccsense->sensors);
 sensor->id = id;
 sensor->type = extdev.type;
 sensor->i2c = &i2c_bus->i2c;
 sensor->addr = addr;
 sensor->config = 0x0;
 return sensor;
}
