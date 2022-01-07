
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MXT_FW_NAME ;
 int dev_err (struct device*,char*,int) ;
 struct mxt_data* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 int mxt_initialize (struct mxt_data*) ;
 int mxt_load_fw (struct device*,int ) ;

__attribute__((used)) static ssize_t mxt_update_fw_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct mxt_data *data = dev_get_drvdata(dev);
 int error;

 error = mxt_load_fw(dev, MXT_FW_NAME);
 if (error) {
  dev_err(dev, "The firmware update failed(%d)\n", error);
  count = error;
 } else {
  dev_info(dev, "The firmware update succeeded\n");

  error = mxt_initialize(data);
  if (error)
   return error;
 }

 return count;
}
