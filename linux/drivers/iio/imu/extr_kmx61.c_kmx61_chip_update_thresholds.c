
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kmx61_data {TYPE_1__* client; int wake_thresh; int wake_duration; } ;
struct TYPE_2__ {int dev; } ;


 int KMX61_REG_WUF_THRESH ;
 int KMX61_REG_WUF_TIMER ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int kmx61_chip_update_thresholds(struct kmx61_data *data)
{
 int ret;

 ret = i2c_smbus_write_byte_data(data->client,
     KMX61_REG_WUF_TIMER,
     data->wake_duration);
 if (ret < 0) {
  dev_err(&data->client->dev, "Errow writing reg_wuf_timer\n");
  return ret;
 }

 ret = i2c_smbus_write_byte_data(data->client,
     KMX61_REG_WUF_THRESH,
     data->wake_thresh);
 if (ret < 0)
  dev_err(&data->client->dev, "Error writing reg_wuf_thresh\n");

 return ret;
}
