
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct TYPE_2__ {int release_ver; } ;
struct hideep_ts {int dev_mutex; TYPE_1__ dwz_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int be16_to_cpu (int ) ;
 struct hideep_ts* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int ,char*,int ) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t hideep_fw_version_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct hideep_ts *ts = i2c_get_clientdata(client);
 ssize_t len;

 mutex_lock(&ts->dev_mutex);
 len = scnprintf(buf, PAGE_SIZE, "%04x\n",
   be16_to_cpu(ts->dwz_info.release_ver));
 mutex_unlock(&ts->dev_mutex);

 return len;
}
