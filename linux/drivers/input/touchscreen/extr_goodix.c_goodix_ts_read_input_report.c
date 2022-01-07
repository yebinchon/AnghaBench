
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct goodix_ts_data {int contact_size; int max_touch_num; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int EPROTO ;
 int GOODIX_BUFFER_STATUS_READY ;
 int GOODIX_BUFFER_STATUS_TIMEOUT ;
 scalar_t__ GOODIX_READ_COOR_ADDR ;
 int dev_err (int *,char*,int) ;
 int goodix_i2c_read (TYPE_1__*,scalar_t__,int*,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int goodix_ts_read_input_report(struct goodix_ts_data *ts, u8 *data)
{
 unsigned long max_timeout;
 int touch_num;
 int error;






 max_timeout = jiffies + msecs_to_jiffies(GOODIX_BUFFER_STATUS_TIMEOUT);
 do {
  error = goodix_i2c_read(ts->client, GOODIX_READ_COOR_ADDR,
     data, ts->contact_size + 1);
  if (error) {
   dev_err(&ts->client->dev, "I2C transfer error: %d\n",
     error);
   return error;
  }

  if (data[0] & GOODIX_BUFFER_STATUS_READY) {
   touch_num = data[0] & 0x0f;
   if (touch_num > ts->max_touch_num)
    return -EPROTO;

   if (touch_num > 1) {
    data += 1 + ts->contact_size;
    error = goodix_i2c_read(ts->client,
      GOODIX_READ_COOR_ADDR +
       1 + ts->contact_size,
      data,
      ts->contact_size *
       (touch_num - 1));
    if (error)
     return error;
   }

   return touch_num;
  }

  usleep_range(1000, 2000);
 } while (time_before(jiffies, max_timeout));





 return 0;
}
