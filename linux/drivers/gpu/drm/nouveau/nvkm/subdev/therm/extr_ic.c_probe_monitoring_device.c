
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvbios_therm_sensor {int offset_constant; } ;
struct nvkm_therm {struct i2c_client* ic; int subdev; struct nvbios_therm_sensor bios_sensor; } ;
struct nvkm_i2c_bus {int i2c; } ;
struct TYPE_3__ {int driver; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct i2c_board_info {int addr; int type; } ;
struct TYPE_4__ {scalar_t__ (* detect ) (struct i2c_client*,struct i2c_board_info*) ;} ;


 int I2C_MODULE_PREFIX ;
 struct i2c_client* i2c_new_device (int *,struct i2c_board_info*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int nvkm_debug (int *,char*,int ,int ,int ) ;
 int request_module (char*,int ,int ) ;
 scalar_t__ stub1 (struct i2c_client*,struct i2c_board_info*) ;
 TYPE_2__* to_i2c_driver (int ) ;

__attribute__((used)) static bool
probe_monitoring_device(struct nvkm_i2c_bus *bus,
   struct i2c_board_info *info, void *data)
{
 struct nvkm_therm *therm = data;
 struct nvbios_therm_sensor *sensor = &therm->bios_sensor;
 struct i2c_client *client;

 request_module("%s%s", I2C_MODULE_PREFIX, info->type);

 client = i2c_new_device(&bus->i2c, info);
 if (!client)
  return 0;

 if (!client->dev.driver ||
     to_i2c_driver(client->dev.driver)->detect(client, info)) {
  i2c_unregister_device(client);
  return 0;
 }

 nvkm_debug(&therm->subdev,
     "Found an %s at address 0x%x (controlled by lm_sensors, "
     "temp offset %+i C)\n",
     info->type, info->addr, sensor->offset_constant);
 therm->ic = client;
 return 1;
}
