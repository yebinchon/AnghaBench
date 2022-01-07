
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stratix10_rsu_priv {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int COMMAND_RSU_UPDATE ;
 int ENODEV ;
 int dev_err (struct device*,char*,int) ;
 struct stratix10_rsu_priv* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int rsu_command_callback ;
 int rsu_send_msg (struct stratix10_rsu_priv*,int ,unsigned long,int ) ;

__attribute__((used)) static ssize_t reboot_image_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct stratix10_rsu_priv *priv = dev_get_drvdata(dev);
 unsigned long address;
 int ret;

 if (priv == 0)
  return -ENODEV;

 ret = kstrtoul(buf, 0, &address);
 if (ret)
  return ret;

 ret = rsu_send_msg(priv, COMMAND_RSU_UPDATE,
      address, rsu_command_callback);
 if (ret) {
  dev_err(dev, "Error, RSU update returned %i\n", ret);
  return ret;
 }

 return count;
}
