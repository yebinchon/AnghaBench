
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {TYPE_1__* kdev; int name; scalar_t__ ddc; } ;
struct TYPE_2__ {int kobj; } ;


 int DRM_DEBUG (char*,int ) ;
 int device_unregister (TYPE_1__*) ;
 int sysfs_remove_link (int *,char*) ;

void drm_sysfs_connector_remove(struct drm_connector *connector)
{
 if (!connector->kdev)
  return;

 if (connector->ddc)
  sysfs_remove_link(&connector->kdev->kobj, "ddc");

 DRM_DEBUG("removing \"%s\" from sysfs\n",
    connector->name);

 device_unregister(connector->kdev);
 connector->kdev = ((void*)0);
}
