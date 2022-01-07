
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int name; } ;
struct TYPE_3__ {struct kobject kobj; } ;
struct i2c_adapter {TYPE_1__ dev; } ;
struct drm_connector {TYPE_2__* kdev; } ;
struct TYPE_4__ {struct kobject kobj; } ;


 struct i2c_adapter* intel_hdmi_get_i2c_adapter (struct drm_connector*) ;
 int sysfs_remove_link (struct kobject*,int ) ;

__attribute__((used)) static void intel_hdmi_remove_i2c_symlink(struct drm_connector *connector)
{
 struct i2c_adapter *adapter = intel_hdmi_get_i2c_adapter(connector);
 struct kobject *i2c_kobj = &adapter->dev.kobj;
 struct kobject *connector_kobj = &connector->kdev->kobj;

 sysfs_remove_link(connector_kobj, i2c_kobj->name);
}
