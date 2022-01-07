
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct i2c_device_id {int driver_data; } ;
struct i2c_client {int dev; } ;
struct TYPE_9__ {int minor; int * fops; int name; } ;
struct fschmd_data {int kind; int* temp_max; int* temp_status; int* fan_status; void* revision; TYPE_2__ watchdog_miscdev; int list; int watchdog_name; int * hwmon_dev; void* watchdog_preset; void* watchdog_state; void* watchdog_control; void* global_control; struct i2c_client* client; int kref; int watchdog_lock; int update_lock; } ;
typedef enum chips { ____Placeholder_chips } chips ;
struct TYPE_8__ {int name; } ;
struct TYPE_13__ {scalar_t__ show; TYPE_1__ attr; } ;
struct TYPE_12__ {TYPE_6__ dev_attr; } ;
struct TYPE_11__ {TYPE_6__ dev_attr; } ;
struct TYPE_10__ {TYPE_6__ dev_attr; } ;


 int ARRAY_SIZE (int const*) ;
 int EBUSY ;
 int ENOMEM ;
 int FSCHMD_FAN_DISABLED ;
 int* FSCHMD_NO_FAN_SENSORS ;
 int* FSCHMD_NO_TEMP_SENSORS ;
 int* FSCHMD_NO_VOLT_SENSORS ;
 int FSCHMD_REG_CONTROL ;
 int ** FSCHMD_REG_FAN_STATE ;
 int FSCHMD_REG_REVISION ;
 int ** FSCHMD_REG_TEMP_STATE ;
 int * FSCHMD_REG_WDOG_CONTROL ;
 int * FSCHMD_REG_WDOG_PRESET ;
 int * FSCHMD_REG_WDOG_STATE ;
 int FSCHMD_TEMP_DISABLED ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int WATCHDOG_MINOR ;
 TYPE_6__ dev_attr_alert_led ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 int device_create_file (int *,TYPE_6__*) ;
 int dmi_vref ;
 int dmi_walk (int ,int *) ;
 int fscher ;
 TYPE_5__* fschmd_attr ;
 int fschmd_dmi_decode ;
 TYPE_4__* fschmd_fan_attr ;
 int fschmd_remove (struct i2c_client*) ;
 TYPE_3__* fschmd_temp_attr ;
 int fschrc ;
 int fscpos ;
 int fscsyl ;
 int * hwmon_device_register (int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct fschmd_data*) ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int kref_init (int *) ;
 struct fschmd_data* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int misc_register (TYPE_2__*) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (int ,int,char*,char) ;
 int strcmp (int ,char*) ;
 scalar_t__ temp_max_show ;
 int watchdog_data_list ;
 int watchdog_data_mutex ;
 int watchdog_fops ;
 int watchdog_set_timeout (struct fschmd_data*,int) ;

__attribute__((used)) static int fschmd_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct fschmd_data *data;
 const char * const names[7] = { "Poseidon", "Hermes", "Scylla",
    "Heracles", "Heimdall", "Hades", "Syleus" };
 const int watchdog_minors[] = { WATCHDOG_MINOR, 212, 213, 214, 215 };
 int i, err;
 enum chips kind = id->driver_data;

 data = kzalloc(sizeof(struct fschmd_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);
 mutex_init(&data->watchdog_lock);
 INIT_LIST_HEAD(&data->list);
 kref_init(&data->kref);





 data->client = client;
 data->kind = kind;

 if (kind == fscpos) {




  data->temp_max[0] = 70 + 128;
  data->temp_max[1] = 50 + 128;
  data->temp_max[2] = 50 + 128;
 }


 if ((kind == fscher || kind >= fschrc) && dmi_vref == -1) {
  dmi_walk(fschmd_dmi_decode, ((void*)0));
  if (dmi_vref == -1) {
   dev_warn(&client->dev,
    "Couldn't get voltage scaling factors from "
    "BIOS DMI table, using builtin defaults\n");
   dmi_vref = 33;
  }
 }


 data->revision = i2c_smbus_read_byte_data(client, FSCHMD_REG_REVISION);
 data->global_control = i2c_smbus_read_byte_data(client,
     FSCHMD_REG_CONTROL);
 data->watchdog_control = i2c_smbus_read_byte_data(client,
     FSCHMD_REG_WDOG_CONTROL[data->kind]);
 data->watchdog_state = i2c_smbus_read_byte_data(client,
     FSCHMD_REG_WDOG_STATE[data->kind]);
 data->watchdog_preset = i2c_smbus_read_byte_data(client,
     FSCHMD_REG_WDOG_PRESET[data->kind]);

 err = device_create_file(&client->dev, &dev_attr_alert_led);
 if (err)
  goto exit_detach;

 for (i = 0; i < FSCHMD_NO_VOLT_SENSORS[data->kind]; i++) {
  err = device_create_file(&client->dev,
     &fschmd_attr[i].dev_attr);
  if (err)
   goto exit_detach;
 }

 for (i = 0; i < (FSCHMD_NO_TEMP_SENSORS[data->kind] * 4); i++) {

  if (kind == fscpos && fschmd_temp_attr[i].dev_attr.show ==
    temp_max_show)
   continue;

  if (kind == fscsyl) {
   if (i % 4 == 0)
    data->temp_status[i / 4] =
     i2c_smbus_read_byte_data(client,
      FSCHMD_REG_TEMP_STATE
      [data->kind][i / 4]);
   if (data->temp_status[i / 4] & FSCHMD_TEMP_DISABLED)
    continue;
  }

  err = device_create_file(&client->dev,
     &fschmd_temp_attr[i].dev_attr);
  if (err)
   goto exit_detach;
 }

 for (i = 0; i < (FSCHMD_NO_FAN_SENSORS[data->kind] * 5); i++) {

  if (kind == fscpos &&
    !strcmp(fschmd_fan_attr[i].dev_attr.attr.name,
     "pwm3_auto_point1_pwm"))
   continue;

  if (kind == fscsyl) {
   if (i % 5 == 0)
    data->fan_status[i / 5] =
     i2c_smbus_read_byte_data(client,
      FSCHMD_REG_FAN_STATE
      [data->kind][i / 5]);
   if (data->fan_status[i / 5] & FSCHMD_FAN_DISABLED)
    continue;
  }

  err = device_create_file(&client->dev,
     &fschmd_fan_attr[i].dev_attr);
  if (err)
   goto exit_detach;
 }

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  data->hwmon_dev = ((void*)0);
  goto exit_detach;
 }






 mutex_lock(&watchdog_data_mutex);
 for (i = 0; i < ARRAY_SIZE(watchdog_minors); i++) {

  snprintf(data->watchdog_name, sizeof(data->watchdog_name),
   "watchdog%c", (i == 0) ? '\0' : ('0' + i));
  data->watchdog_miscdev.name = data->watchdog_name;
  data->watchdog_miscdev.fops = &watchdog_fops;
  data->watchdog_miscdev.minor = watchdog_minors[i];
  err = misc_register(&data->watchdog_miscdev);
  if (err == -EBUSY)
   continue;
  if (err) {
   data->watchdog_miscdev.minor = 0;
   dev_err(&client->dev,
    "Registering watchdog chardev: %d\n", err);
   break;
  }

  list_add(&data->list, &watchdog_data_list);
  watchdog_set_timeout(data, 60);
  dev_info(&client->dev,
   "Registered watchdog chardev major 10, minor: %d\n",
   watchdog_minors[i]);
  break;
 }
 if (i == ARRAY_SIZE(watchdog_minors)) {
  data->watchdog_miscdev.minor = 0;
  dev_warn(&client->dev,
    "Couldn't register watchdog chardev (due to no free minor)\n");
 }
 mutex_unlock(&watchdog_data_mutex);

 dev_info(&client->dev, "Detected FSC %s chip, revision: %d\n",
  names[data->kind], (int) data->revision);

 return 0;

exit_detach:
 fschmd_remove(client);
 return err;
}
