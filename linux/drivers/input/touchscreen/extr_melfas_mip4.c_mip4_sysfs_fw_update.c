
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mip4_ts {TYPE_2__* client; TYPE_1__* input; int fw_name; } ;
struct i2c_client {int dummy; } ;
struct firmware {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int mutex; } ;


 int dev_err (int *,char*,int,...) ;
 struct mip4_ts* i2c_get_clientdata (struct i2c_client*) ;
 int mip4_execute_fw_update (struct mip4_ts*,struct firmware const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,struct device*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t mip4_sysfs_fw_update(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct mip4_ts *ts = i2c_get_clientdata(client);
 const struct firmware *fw;
 int error;

 error = request_firmware(&fw, ts->fw_name, dev);
 if (error) {
  dev_err(&ts->client->dev,
   "Failed to retrieve firmware %s: %d\n",
   ts->fw_name, error);
  return error;
 }






 mutex_lock(&ts->input->mutex);

 error = mip4_execute_fw_update(ts, fw);

 mutex_unlock(&ts->input->mutex);

 release_firmware(fw);

 if (error) {
  dev_err(&ts->client->dev,
   "Firmware update failed: %d\n", error);
  return error;
 }

 return count;
}
