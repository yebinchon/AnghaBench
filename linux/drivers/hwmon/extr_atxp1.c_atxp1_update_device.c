
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {void* gpio2; void* gpio1; void* cpu_vid; void* vid; } ;
struct atxp1_data {int valid; int update_lock; TYPE_1__ reg; scalar_t__ last_updated; struct i2c_client* client; } ;


 int ATXP1_CVID ;
 int ATXP1_GPIO1 ;
 int ATXP1_GPIO2 ;
 int ATXP1_VID ;
 scalar_t__ HZ ;
 struct atxp1_data* dev_get_drvdata (struct device*) ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static struct atxp1_data *atxp1_update_device(struct device *dev)
{
 struct atxp1_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {


  data->reg.vid = i2c_smbus_read_byte_data(client, ATXP1_VID);
  data->reg.cpu_vid = i2c_smbus_read_byte_data(client,
            ATXP1_CVID);
  data->reg.gpio1 = i2c_smbus_read_byte_data(client, ATXP1_GPIO1);
  data->reg.gpio2 = i2c_smbus_read_byte_data(client, ATXP1_GPIO2);

  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
