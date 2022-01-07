
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wf_ad7417_priv {int cpu; struct mpu_data const* mpu; struct i2c_client* i2c; int lock; int ref; } ;
struct mpu_data {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENODEV ;
 int ENXIO ;
 int GFP_KERNEL ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_set_drvdata (TYPE_1__*,struct wf_ad7417_priv*) ;
 int dev_warn (TYPE_1__*,char*) ;
 int kref_init (int *) ;
 struct wf_ad7417_priv* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 char* of_get_property (int ,char*,int *) ;
 int pr_err (char*,char const*) ;
 int strncmp (char const*,char*,int) ;
 int wf_ad7417_adc_ops ;
 int wf_ad7417_add_sensor (struct wf_ad7417_priv*,int,char*,int *) ;
 int wf_ad7417_init_chip (struct wf_ad7417_priv*) ;
 int wf_ad7417_temp_ops ;
 struct mpu_data* wf_get_mpu (int) ;

__attribute__((used)) static int wf_ad7417_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct wf_ad7417_priv *pv;
 const struct mpu_data *mpu;
 const char *loc;
 int cpu_nr;

 loc = of_get_property(client->dev.of_node, "hwsensor-location", ((void*)0));
 if (!loc) {
  dev_warn(&client->dev, "Missing hwsensor-location property!\n");
  return -ENXIO;
 }





 if (!strncmp(loc, "CPU A", 5))
  cpu_nr = 0;
 else if (!strncmp(loc, "CPU B", 5))
  cpu_nr = 1;
 else {
  pr_err("wf_ad7417: Can't identify location %s\n", loc);
  return -ENXIO;
 }
 mpu = wf_get_mpu(cpu_nr);
 if (!mpu) {
  dev_err(&client->dev, "Failed to retrieve MPU data\n");
  return -ENXIO;
 }

 pv = kzalloc(sizeof(struct wf_ad7417_priv), GFP_KERNEL);
 if (pv == ((void*)0))
  return -ENODEV;

 kref_init(&pv->ref);
 mutex_init(&pv->lock);
 pv->i2c = client;
 pv->cpu = cpu_nr;
 pv->mpu = mpu;
 dev_set_drvdata(&client->dev, pv);


 wf_ad7417_init_chip(pv);






 wf_ad7417_add_sensor(pv, 0, "cpu-amb-temp", &wf_ad7417_temp_ops);
 wf_ad7417_add_sensor(pv, 1, "cpu-diode-temp", &wf_ad7417_adc_ops);
 wf_ad7417_add_sensor(pv, 2, "cpu-12v-current", &wf_ad7417_adc_ops);
 wf_ad7417_add_sensor(pv, 3, "cpu-voltage", &wf_ad7417_adc_ops);
 wf_ad7417_add_sensor(pv, 4, "cpu-current", &wf_ad7417_adc_ops);

 return 0;
}
