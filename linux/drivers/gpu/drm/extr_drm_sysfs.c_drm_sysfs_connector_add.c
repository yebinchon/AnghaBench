
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct drm_device {TYPE_1__* primary; } ;
struct drm_connector {TYPE_3__* ddc; TYPE_4__* kdev; int name; struct drm_device* dev; } ;
struct TYPE_10__ {int kobj; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_9__ {TYPE_2__ dev; } ;
struct TYPE_7__ {int index; int kdev; } ;


 int DRM_DEBUG (char*,int ) ;
 int DRM_ERROR (char*,int) ;
 scalar_t__ IS_ERR (TYPE_4__*) ;
 int PTR_ERR (TYPE_4__*) ;
 int connector_dev_groups ;
 TYPE_4__* device_create_with_groups (int ,int ,int ,struct drm_connector*,int ,char*,int ,int ) ;
 int drm_class ;
 int drm_sysfs_hotplug_event (struct drm_device*) ;
 int sysfs_create_link (int *,int *,char*) ;

int drm_sysfs_connector_add(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;

 if (connector->kdev)
  return 0;

 connector->kdev =
  device_create_with_groups(drm_class, dev->primary->kdev, 0,
       connector, connector_dev_groups,
       "card%d-%s", dev->primary->index,
       connector->name);
 DRM_DEBUG("adding \"%s\" to sysfs\n",
    connector->name);

 if (IS_ERR(connector->kdev)) {
  DRM_ERROR("failed to register connector device: %ld\n", PTR_ERR(connector->kdev));
  return PTR_ERR(connector->kdev);
 }


 drm_sysfs_hotplug_event(dev);

 if (connector->ddc)
  return sysfs_create_link(&connector->kdev->kobj,
     &connector->ddc->dev.kobj, "ddc");
 return 0;
}
