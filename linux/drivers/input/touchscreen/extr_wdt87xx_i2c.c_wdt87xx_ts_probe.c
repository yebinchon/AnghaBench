
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wdt87xx_data {int param; int phys; int fw_mutex; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; int name; int irq; TYPE_1__* adapter; } ;
struct TYPE_2__ {int nr; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int IRQF_ONESHOT ;
 int dev_dbg (int *,char*,int,int ) ;
 int dev_err (int *,char*,int) ;
 int devm_device_add_group (int *,int *) ;
 struct wdt87xx_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,int ,struct wdt87xx_data*) ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct wdt87xx_data*) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,int,int) ;
 int wdt87xx_attr_group ;
 int wdt87xx_get_sysparam (struct i2c_client*,int *) ;
 int wdt87xx_ts_create_input_device (struct wdt87xx_data*) ;
 int wdt87xx_ts_interrupt ;

__attribute__((used)) static int wdt87xx_ts_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct wdt87xx_data *wdt;
 int error;

 dev_dbg(&client->dev, "adapter=%d, client irq: %d\n",
  client->adapter->nr, client->irq);


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -ENXIO;

 wdt = devm_kzalloc(&client->dev, sizeof(*wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 wdt->client = client;
 mutex_init(&wdt->fw_mutex);
 i2c_set_clientdata(client, wdt);

 snprintf(wdt->phys, sizeof(wdt->phys), "i2c-%u-%04x/input0",
   client->adapter->nr, client->addr);

 error = wdt87xx_get_sysparam(client, &wdt->param);
 if (error)
  return error;

 error = wdt87xx_ts_create_input_device(wdt);
 if (error)
  return error;

 error = devm_request_threaded_irq(&client->dev, client->irq,
       ((void*)0), wdt87xx_ts_interrupt,
       IRQF_ONESHOT,
       client->name, wdt);
 if (error) {
  dev_err(&client->dev, "request irq failed: %d\n", error);
  return error;
 }

 error = devm_device_add_group(&client->dev, &wdt87xx_attr_group);
 if (error) {
  dev_err(&client->dev, "create sysfs failed: %d\n", error);
  return error;
 }

 return 0;
}
