
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mma9553_data {int mutex; TYPE_1__* client; scalar_t__ stepcnt_enabled; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int MMA9551_APPID_PEDOMETER ;
 int dev_err (int *,char*) ;
 int mma9551_read_status_word (TYPE_1__*,int ,int ,int *) ;
 scalar_t__ mma9553_is_any_event_enabled (struct mma9553_data*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mma9553_read_status_word(struct mma9553_data *data, u16 reg,
        u16 *tmp)
{
 bool powered_on;
 int ret;







 powered_on = mma9553_is_any_event_enabled(data, 0, 0) ||
       data->stepcnt_enabled;
 if (!powered_on) {
  dev_err(&data->client->dev, "No channels enabled\n");
  return -EINVAL;
 }

 mutex_lock(&data->mutex);
 ret = mma9551_read_status_word(data->client, MMA9551_APPID_PEDOMETER,
           reg, tmp);
 mutex_unlock(&data->mutex);
 return ret;
}
