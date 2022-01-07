
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_module {int dev; } ;
struct gb_interface {scalar_t__ type; int mutex; int interface_id; struct gb_module* module; } ;


 scalar_t__ GB_INTERFACE_TYPE_DUMMY ;
 int dev_err (int *,char*,int ,int) ;
 int gb_interface_activate (struct gb_interface*) ;
 int gb_interface_add (struct gb_interface*) ;
 int gb_interface_deactivate (struct gb_interface*) ;
 int gb_interface_enable (struct gb_interface*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gb_module_register_interface(struct gb_interface *intf)
{
 struct gb_module *module = intf->module;
 u8 intf_id = intf->interface_id;
 int ret;

 mutex_lock(&intf->mutex);

 ret = gb_interface_activate(intf);
 if (ret) {
  if (intf->type != GB_INTERFACE_TYPE_DUMMY) {
   dev_err(&module->dev,
    "failed to activate interface %u: %d\n",
    intf_id, ret);
  }

  gb_interface_add(intf);
  goto err_unlock;
 }

 ret = gb_interface_add(intf);
 if (ret)
  goto err_interface_deactivate;

 ret = gb_interface_enable(intf);
 if (ret) {
  dev_err(&module->dev, "failed to enable interface %u: %d\n",
   intf_id, ret);
  goto err_interface_deactivate;
 }

 mutex_unlock(&intf->mutex);

 return;

err_interface_deactivate:
 gb_interface_deactivate(intf);
err_unlock:
 mutex_unlock(&intf->mutex);
}
