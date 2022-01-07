
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zforce_ts_platdata {int x_max; int y_max; } ;
struct zforce_ts {int command_done; int command_waiting; struct input_dev* input; int phys; struct i2c_client* client; struct zforce_ts_platdata const* pdata; int command_mutex; int access_mutex; struct zforce_ts_platdata const* reg_vdd; struct zforce_ts_platdata const* gpio_rst; struct zforce_ts_platdata const* gpio_int; } ;
struct TYPE_2__ {int bustype; } ;
struct input_dev {char* name; int evbit; int close; int open; TYPE_1__ id; int phys; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int BUS_I2C ;
 int COMMAND_INITIALIZE ;
 int COMMAND_STATUS ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_SYN ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_HIGH ;
 int INPUT_MT_DIRECT ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (struct zforce_ts_platdata const*) ;
 int NOTIFICATION_BOOTCOMPLETE ;
 int PTR_ERR (struct zforce_ts_platdata const*) ;
 int WAIT_TIMEOUT ;
 int ZFORCE_MAX_AREA ;
 int ZFORCE_REPORT_POINTS ;
 int __set_bit (int ,int ) ;
 int dev_err (int *,char*,...) ;
 struct zforce_ts_platdata* dev_get_platdata (int *) ;
 char* dev_name (int *) ;
 int dev_warn (int *,char*) ;
 int device_set_wakeup_capable (int *,int) ;
 int devm_add_action (int *,int ,struct zforce_ts*) ;
 void* devm_gpiod_get_index (int *,int *,int,int ) ;
 void* devm_gpiod_get_optional (int *,char*,int ) ;
 struct input_dev* devm_input_allocate_device (int *) ;
 struct zforce_ts* devm_kzalloc (int *,int,int ) ;
 struct zforce_ts_platdata const* devm_regulator_get_optional (int *,char*) ;
 int devm_request_threaded_irq (int *,int,int ,int ,int,char*,struct zforce_ts*) ;
 int i2c_set_clientdata (struct i2c_client*,struct zforce_ts*) ;
 int init_completion (int *) ;
 int input_mt_init_slots (struct input_dev*,int ,int ) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct zforce_ts*) ;
 int mutex_init (int *) ;
 int regulator_disable (struct zforce_ts_platdata const*) ;
 int regulator_enable (struct zforce_ts_platdata const*) ;
 int snprintf (int ,int,char*,char*) ;
 int udelay (int) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;
 int zforce_command_wait (struct zforce_ts*,int ) ;
 int zforce_input_close ;
 int zforce_input_open ;
 int zforce_irq ;
 int zforce_irq_thread ;
 struct zforce_ts_platdata* zforce_parse_dt (int *) ;
 int zforce_reset ;
 int zforce_reset_deassert (struct zforce_ts*) ;
 int zforce_stop (struct zforce_ts*) ;

__attribute__((used)) static int zforce_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 const struct zforce_ts_platdata *pdata = dev_get_platdata(&client->dev);
 struct zforce_ts *ts;
 struct input_dev *input_dev;
 int ret;

 if (!pdata) {
  pdata = zforce_parse_dt(&client->dev);
  if (IS_ERR(pdata))
   return PTR_ERR(pdata);
 }

 ts = devm_kzalloc(&client->dev, sizeof(struct zforce_ts), GFP_KERNEL);
 if (!ts)
  return -ENOMEM;

 ts->gpio_rst = devm_gpiod_get_optional(&client->dev, "reset",
            GPIOD_OUT_HIGH);
 if (IS_ERR(ts->gpio_rst)) {
  ret = PTR_ERR(ts->gpio_rst);
  dev_err(&client->dev,
   "failed to request reset GPIO: %d\n", ret);
  return ret;
 }

 if (ts->gpio_rst) {
  ts->gpio_int = devm_gpiod_get_optional(&client->dev, "irq",
             GPIOD_IN);
  if (IS_ERR(ts->gpio_int)) {
   ret = PTR_ERR(ts->gpio_int);
   dev_err(&client->dev,
    "failed to request interrupt GPIO: %d\n", ret);
   return ret;
  }
 } else {






  ts->gpio_int = devm_gpiod_get_index(&client->dev, ((void*)0), 0,
          GPIOD_IN);
  if (IS_ERR(ts->gpio_int)) {
   ret = PTR_ERR(ts->gpio_int);
   dev_err(&client->dev,
    "failed to request interrupt GPIO: %d\n", ret);
   return ret;
  }


  ts->gpio_rst = devm_gpiod_get_index(&client->dev, ((void*)0), 1,
         GPIOD_OUT_HIGH);
  if (IS_ERR(ts->gpio_rst)) {
   ret = PTR_ERR(ts->gpio_rst);
   dev_err(&client->dev,
    "failed to request reset GPIO: %d\n", ret);
   return ret;
  }
 }

 ts->reg_vdd = devm_regulator_get_optional(&client->dev, "vdd");
 if (IS_ERR(ts->reg_vdd)) {
  ret = PTR_ERR(ts->reg_vdd);
  if (ret == -EPROBE_DEFER)
   return ret;
 } else {
  ret = regulator_enable(ts->reg_vdd);
  if (ret)
   return ret;





  udelay(100);
 }

 ret = devm_add_action(&client->dev, zforce_reset, ts);
 if (ret) {
  dev_err(&client->dev, "failed to register reset action, %d\n",
   ret);


  if (!IS_ERR(ts->reg_vdd))
   regulator_disable(ts->reg_vdd);

  return ret;
 }

 snprintf(ts->phys, sizeof(ts->phys),
   "%s/input0", dev_name(&client->dev));

 input_dev = devm_input_allocate_device(&client->dev);
 if (!input_dev) {
  dev_err(&client->dev, "could not allocate input device\n");
  return -ENOMEM;
 }

 mutex_init(&ts->access_mutex);
 mutex_init(&ts->command_mutex);

 ts->pdata = pdata;
 ts->client = client;
 ts->input = input_dev;

 input_dev->name = "Neonode zForce touchscreen";
 input_dev->phys = ts->phys;
 input_dev->id.bustype = BUS_I2C;

 input_dev->open = zforce_input_open;
 input_dev->close = zforce_input_close;

 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(EV_SYN, input_dev->evbit);
 __set_bit(EV_ABS, input_dev->evbit);


 input_set_abs_params(input_dev, ABS_MT_POSITION_X, 0,
        pdata->x_max, 0, 0);
 input_set_abs_params(input_dev, ABS_MT_POSITION_Y, 0,
        pdata->y_max, 0, 0);

 input_set_abs_params(input_dev, ABS_MT_TOUCH_MAJOR, 0,
        ZFORCE_MAX_AREA, 0, 0);
 input_set_abs_params(input_dev, ABS_MT_TOUCH_MINOR, 0,
        ZFORCE_MAX_AREA, 0, 0);
 input_set_abs_params(input_dev, ABS_MT_ORIENTATION, 0, 1, 0, 0);
 input_mt_init_slots(input_dev, ZFORCE_REPORT_POINTS, INPUT_MT_DIRECT);

 input_set_drvdata(ts->input, ts);

 init_completion(&ts->command_done);
 ret = devm_request_threaded_irq(&client->dev, client->irq,
     zforce_irq, zforce_irq_thread,
     IRQF_TRIGGER_LOW | IRQF_ONESHOT,
     input_dev->name, ts);
 if (ret) {
  dev_err(&client->dev, "irq %d request failed\n", client->irq);
  return ret;
 }

 i2c_set_clientdata(client, ts);


 zforce_reset_deassert(ts);

 ts->command_waiting = NOTIFICATION_BOOTCOMPLETE;
 if (wait_for_completion_timeout(&ts->command_done, WAIT_TIMEOUT) == 0)
  dev_warn(&client->dev, "bootcomplete timed out\n");


 ret = zforce_command_wait(ts, COMMAND_INITIALIZE);
 if (ret) {
  dev_err(&client->dev, "unable to initialize, %d\n", ret);
  return ret;
 }


 ret = zforce_command_wait(ts, COMMAND_STATUS);
 if (ret < 0) {
  dev_err(&client->dev, "couldn't get status, %d\n", ret);
  zforce_stop(ts);
  return ret;
 }


 ret = zforce_stop(ts);
 if (ret < 0)
  return ret;

 device_set_wakeup_capable(&client->dev, 1);

 ret = input_register_device(input_dev);
 if (ret) {
  dev_err(&client->dev, "could not register input device, %d\n",
   ret);
  return ret;
 }

 return 0;
}
