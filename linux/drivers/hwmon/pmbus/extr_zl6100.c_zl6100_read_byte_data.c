
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zl6100_data {int access; } ;
struct pmbus_driver_info {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ENXIO ;
 int PB_VOLTAGE_OV_FAULT ;
 int PB_VOLTAGE_OV_WARNING ;
 int PB_VOLTAGE_UV_FAULT ;
 int PB_VOLTAGE_UV_WARNING ;
 int PMBUS_STATUS_MFR_SPECIFIC ;

 int VMON_OV_FAULT ;
 int VMON_OV_WARNING ;
 int VMON_UV_FAULT ;
 int VMON_UV_WARNING ;
 int ktime_get () ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 int pmbus_read_byte_data (struct i2c_client*,int,int) ;
 struct zl6100_data* to_zl6100_data (struct pmbus_driver_info const*) ;
 int zl6100_wait (struct zl6100_data*) ;

__attribute__((used)) static int zl6100_read_byte_data(struct i2c_client *client, int page, int reg)
{
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 struct zl6100_data *data = to_zl6100_data(info);
 int ret, status;

 if (page > 0)
  return -ENXIO;

 zl6100_wait(data);

 switch (reg) {
 case 128:
  ret = pmbus_read_byte_data(client, 0,
        PMBUS_STATUS_MFR_SPECIFIC);
  if (ret < 0)
   break;

  status = 0;
  if (ret & VMON_UV_WARNING)
   status |= PB_VOLTAGE_UV_WARNING;
  if (ret & VMON_OV_WARNING)
   status |= PB_VOLTAGE_OV_WARNING;
  if (ret & VMON_UV_FAULT)
   status |= PB_VOLTAGE_UV_FAULT;
  if (ret & VMON_OV_FAULT)
   status |= PB_VOLTAGE_OV_FAULT;
  ret = status;
  break;
 default:
  ret = pmbus_read_byte_data(client, page, reg);
  break;
 }
 data->access = ktime_get();

 return ret;
}
