
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; int * ops; } ;
struct wf_lm75_sensor {int ds1775; TYPE_1__ sens; struct i2c_client* i2c; scalar_t__ inited; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_4__ {int of_node; } ;
struct i2c_client {TYPE_2__ dev; int addr; } ;


 int DBG (char*,char*,int ) ;
 int ENODEV ;
 int ENXIO ;
 int GFP_KERNEL ;
 int dev_warn (TYPE_2__*,char*) ;
 int i2c_set_clientdata (struct i2c_client*,struct wf_lm75_sensor*) ;
 int kfree (struct wf_lm75_sensor*) ;
 struct wf_lm75_sensor* kzalloc (int,int ) ;
 char* of_get_property (int ,char*,int *) ;
 int strcmp (char const*,char*) ;
 int wf_lm75_ops ;
 int wf_register_sensor (TYPE_1__*) ;

__attribute__((used)) static int wf_lm75_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct wf_lm75_sensor *lm;
 int rc, ds1775 = id->driver_data;
 const char *name, *loc;

 DBG("wf_lm75: creating  %s device at address 0x%02x\n",
     ds1775 ? "ds1775" : "lm75", client->addr);

 loc = of_get_property(client->dev.of_node, "hwsensor-location", ((void*)0));
 if (!loc) {
  dev_warn(&client->dev, "Missing hwsensor-location property!\n");
  return -ENXIO;
 }





 if (!strcmp(loc, "Hard drive") || !strcmp(loc, "DRIVE BAY"))
  name = "hd-temp";
 else if (!strcmp(loc, "Incoming Air Temp"))
  name = "incoming-air-temp";
 else if (!strcmp(loc, "ODD Temp"))
  name = "optical-drive-temp";
 else if (!strcmp(loc, "HD Temp"))
  name = "hard-drive-temp";
 else if (!strcmp(loc, "PCI SLOTS"))
  name = "slots-temp";
 else if (!strcmp(loc, "CPU A INLET"))
  name = "cpu-inlet-temp-0";
 else if (!strcmp(loc, "CPU B INLET"))
  name = "cpu-inlet-temp-1";
 else
  return -ENXIO;


 lm = kzalloc(sizeof(struct wf_lm75_sensor), GFP_KERNEL);
 if (lm == ((void*)0))
  return -ENODEV;

 lm->inited = 0;
 lm->ds1775 = ds1775;
 lm->i2c = client;
 lm->sens.name = name;
 lm->sens.ops = &wf_lm75_ops;
 i2c_set_clientdata(client, lm);

 rc = wf_register_sensor(&lm->sens);
 if (rc)
  kfree(lm);
 return rc;
}
