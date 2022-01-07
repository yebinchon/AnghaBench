
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int value ;
typedef int u32 ;
struct rpi_hwmon_data {int last_throttled; TYPE_1__* hwmon_dev; int fw; } ;
struct TYPE_4__ {int kobj; } ;


 int RPI_FIRMWARE_GET_THROTTLED ;
 int UNDERVOLTAGE_STICKY_BIT ;
 int dev_crit (TYPE_1__*,char*) ;
 int dev_err_once (TYPE_1__*,char*,int) ;
 int dev_info (TYPE_1__*,char*) ;
 int rpi_firmware_property (int ,int ,int*,int) ;
 int sysfs_notify (int *,int *,char*) ;

__attribute__((used)) static void rpi_firmware_get_throttled(struct rpi_hwmon_data *data)
{
 u32 new_uv, old_uv, value;
 int ret;


 value = 0xffff;

 ret = rpi_firmware_property(data->fw, RPI_FIRMWARE_GET_THROTTLED,
        &value, sizeof(value));
 if (ret) {
  dev_err_once(data->hwmon_dev, "Failed to get throttled (%d)\n",
        ret);
  return;
 }

 new_uv = value & UNDERVOLTAGE_STICKY_BIT;
 old_uv = data->last_throttled & UNDERVOLTAGE_STICKY_BIT;
 data->last_throttled = value;

 if (new_uv == old_uv)
  return;

 if (new_uv)
  dev_crit(data->hwmon_dev, "Undervoltage detected!\n");
 else
  dev_info(data->hwmon_dev, "Voltage normalised\n");

 sysfs_notify(&data->hwmon_dev->kobj, ((void*)0), "in0_lcrit_alarm");
}
