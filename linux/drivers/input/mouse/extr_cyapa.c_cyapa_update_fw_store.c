
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int state_sync_lock; int * input; } ;
typedef int ssize_t ;


 int EINVAL ;
 int NAME_MAX ;
 int cyapa_firmware (struct cyapa*,char*) ;
 int cyapa_reinitialize (struct cyapa*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 struct cyapa* dev_get_drvdata (struct device*) ;
 int input_unregister_device (int *) ;
 int memcpy (char*,char const*,size_t) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t cyapa_update_fw_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct cyapa *cyapa = dev_get_drvdata(dev);
 char fw_name[NAME_MAX];
 int ret, error;

 if (count >= NAME_MAX) {
  dev_err(dev, "File name too long\n");
  return -EINVAL;
 }

 memcpy(fw_name, buf, count);
 if (fw_name[count - 1] == '\n')
  fw_name[count - 1] = '\0';
 else
  fw_name[count] = '\0';

 if (cyapa->input) {





  input_unregister_device(cyapa->input);
  cyapa->input = ((void*)0);
 }

 error = mutex_lock_interruptible(&cyapa->state_sync_lock);
 if (error) {




  cyapa_reinitialize(cyapa);
  return error;
 }

 error = cyapa_firmware(cyapa, fw_name);
 if (error)
  dev_err(dev, "firmware update failed: %d\n", error);
 else
  dev_dbg(dev, "firmware update successfully done.\n");





 ret = cyapa_reinitialize(cyapa);
 if (ret) {
  dev_err(dev, "failed to re-detect after updated: %d\n", ret);
  error = error ? error : ret;
 }

 mutex_unlock(&cyapa->state_sync_lock);

 return error ? error : count;
}
