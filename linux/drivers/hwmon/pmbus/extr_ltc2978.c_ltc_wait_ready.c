
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pmbus_driver_info {int dummy; } ;
struct ltc2978_data {scalar_t__ id; } ;
struct i2c_client {int dummy; } ;


 int EBADMSG ;
 int ENXIO ;
 int ETIMEDOUT ;
 int LTC2978_MFR_COMMON ;
 int LTC_NOT_BUSY ;
 int LTC_NOT_PENDING ;
 int LTC_POLL_TIMEOUT ;
 unsigned long jiffies ;
 scalar_t__ ltc3883 ;
 unsigned long msecs_to_jiffies (int ) ;
 int needs_polling (struct ltc2978_data*) ;
 struct pmbus_driver_info* pmbus_get_driver_info (struct i2c_client*) ;
 int pmbus_read_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 struct ltc2978_data* to_ltc2978_data (struct pmbus_driver_info const*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ltc_wait_ready(struct i2c_client *client)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(LTC_POLL_TIMEOUT);
 const struct pmbus_driver_info *info = pmbus_get_driver_info(client);
 struct ltc2978_data *data = to_ltc2978_data(info);
 int status;
 u8 mask;

 if (!needs_polling(data))
  return 0;





 mask = LTC_NOT_BUSY;
 if (data->id != ltc3883)
  mask |= LTC_NOT_PENDING;

 do {
  status = pmbus_read_byte_data(client, 0, LTC2978_MFR_COMMON);
  if (status == -EBADMSG || status == -ENXIO) {

   usleep_range(50, 100);
   continue;
  }
  if (status < 0)
   return status;

  if ((status & mask) == mask)
   return 0;

  usleep_range(50, 100);
 } while (time_before(jiffies, timeout));

 return -ETIMEDOUT;
}
