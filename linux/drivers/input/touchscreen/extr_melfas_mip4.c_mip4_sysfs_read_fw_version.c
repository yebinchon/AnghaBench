
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int boot; int core; int app; int param; } ;
struct mip4_ts {TYPE_2__* input; TYPE_1__ fw_version; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int mutex; } ;


 int PAGE_SIZE ;
 struct mip4_ts* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t snprintf (char*,int ,char*,int,int,int,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t mip4_sysfs_read_fw_version(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct mip4_ts *ts = i2c_get_clientdata(client);
 size_t count;


 mutex_lock(&ts->input->mutex);

 count = snprintf(buf, PAGE_SIZE, "%04X %04X %04X %04X\n",
    ts->fw_version.boot, ts->fw_version.core,
    ts->fw_version.app, ts->fw_version.param);

 mutex_unlock(&ts->input->mutex);

 return count;
}
