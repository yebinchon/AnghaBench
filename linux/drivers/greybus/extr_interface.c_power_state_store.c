
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int active; int mutex; int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int dev_err (int *,char*,int) ;
 int gb_interface_activate (struct gb_interface*) ;
 int gb_interface_deactivate (struct gb_interface*) ;
 int gb_interface_disable (struct gb_interface*) ;
 int gb_interface_enable (struct gb_interface*) ;
 scalar_t__ kstrtobool (char const*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct gb_interface* to_gb_interface (struct device*) ;

__attribute__((used)) static ssize_t power_state_store(struct device *dev,
     struct device_attribute *attr, const char *buf,
     size_t len)
{
 struct gb_interface *intf = to_gb_interface(dev);
 bool activate;
 int ret = 0;

 if (kstrtobool(buf, &activate))
  return -EINVAL;

 mutex_lock(&intf->mutex);

 if (activate == intf->active)
  goto unlock;

 if (activate) {
  ret = gb_interface_activate(intf);
  if (ret) {
   dev_err(&intf->dev,
    "failed to activate interface: %d\n", ret);
   goto unlock;
  }

  ret = gb_interface_enable(intf);
  if (ret) {
   dev_err(&intf->dev,
    "failed to enable interface: %d\n", ret);
   gb_interface_deactivate(intf);
   goto unlock;
  }
 } else {
  gb_interface_disable(intf);
  gb_interface_deactivate(intf);
 }

unlock:
 mutex_unlock(&intf->mutex);

 if (ret)
  return ret;

 return len;
}
