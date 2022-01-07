
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mma9553_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int MMA9551_APPID_PEDOMETER ;
 int MMA9553_MASK_STATUS_ACTIVITY ;
 int MMA9553_REG_STATUS ;
 int dev_err (int *,char*) ;
 int mma9551_read_status_words (TYPE_1__*,int ,int ,int ,int *) ;
 int mma9553_get_bits (int ,int ) ;

__attribute__((used)) static int mma9553_read_activity_stepcnt(struct mma9553_data *data,
      u8 *activity, u16 *stepcnt)
{
 u16 buf[2];
 int ret;

 ret = mma9551_read_status_words(data->client, MMA9551_APPID_PEDOMETER,
     MMA9553_REG_STATUS, ARRAY_SIZE(buf),
     buf);
 if (ret < 0) {
  dev_err(&data->client->dev,
   "error reading status and stepcnt\n");
  return ret;
 }

 *activity = mma9553_get_bits(buf[0], MMA9553_MASK_STATUS_ACTIVITY);
 *stepcnt = buf[1];

 return 0;
}
