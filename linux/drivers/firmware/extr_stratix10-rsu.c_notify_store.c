
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; } ;
struct stratix10_rsu_priv {TYPE_1__ status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int COMMAND_RSU_NOTIFY ;
 int COMMAND_RSU_RETRY ;
 int COMMAND_RSU_STATUS ;
 int ENODEV ;
 scalar_t__ FIELD_GET (int ,int ) ;
 int RSU_FW_VERSION_MASK ;
 int dev_err (struct device*,char*,int) ;
 struct stratix10_rsu_priv* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int rsu_command_callback ;
 int rsu_retry_callback ;
 int rsu_send_msg (struct stratix10_rsu_priv*,int ,unsigned long,int ) ;
 int rsu_status_callback ;

__attribute__((used)) static ssize_t notify_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct stratix10_rsu_priv *priv = dev_get_drvdata(dev);
 unsigned long status;
 int ret;

 if (priv == 0)
  return -ENODEV;

 ret = kstrtoul(buf, 0, &status);
 if (ret)
  return ret;

 ret = rsu_send_msg(priv, COMMAND_RSU_NOTIFY,
      status, rsu_command_callback);
 if (ret) {
  dev_err(dev, "Error, RSU notify returned %i\n", ret);
  return ret;
 }


 ret = rsu_send_msg(priv, COMMAND_RSU_STATUS,
      0, rsu_status_callback);
 if (ret) {
  dev_err(dev, "Error, getting RSU status %i\n", ret);
  return ret;
 }


 if (FIELD_GET(RSU_FW_VERSION_MASK, priv->status.version)) {
  ret = rsu_send_msg(priv, COMMAND_RSU_RETRY,
       0, rsu_retry_callback);
  if (ret) {
   dev_err(dev,
    "Error, getting RSU retry %i\n", ret);
   return ret;
  }
 }

 return count;
}
