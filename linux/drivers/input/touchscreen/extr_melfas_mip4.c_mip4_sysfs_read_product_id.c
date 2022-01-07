
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mip4_ts {int product_id; TYPE_1__* input; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int mutex; } ;


 int PAGE_SIZE ;
 struct mip4_ts* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t snprintf (char*,int ,char*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t mip4_sysfs_read_product_id(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct mip4_ts *ts = i2c_get_clientdata(client);
 size_t count;

 mutex_lock(&ts->input->mutex);

 count = snprintf(buf, PAGE_SIZE, "%04X\n", ts->product_id);

 mutex_unlock(&ts->input->mutex);

 return count;
}
