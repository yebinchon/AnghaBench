
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_module {size_t num_interfaces; int module_id; TYPE_1__* hd; struct gb_interface** interfaces; } ;
struct gb_interface {int ejected; int mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int svc; } ;


 int gb_interface_deactivate (struct gb_interface*) ;
 int gb_interface_disable (struct gb_interface*) ;
 int gb_svc_intf_eject (int ,int ) ;
 int kstrtol (char const*,int ,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct gb_module* to_gb_module (struct device*) ;

__attribute__((used)) static ssize_t eject_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t len)
{
 struct gb_module *module = to_gb_module(dev);
 struct gb_interface *intf;
 size_t i;
 long val;
 int ret;

 ret = kstrtol(buf, 0, &val);
 if (ret)
  return ret;

 if (!val)
  return len;

 for (i = 0; i < module->num_interfaces; ++i) {
  intf = module->interfaces[i];

  mutex_lock(&intf->mutex);

  intf->ejected = 1;
  gb_interface_disable(intf);
  gb_interface_deactivate(intf);
  mutex_unlock(&intf->mutex);
 }


 ret = gb_svc_intf_eject(module->hd->svc, module->module_id);
 if (ret)
  return ret;

 return len;
}
