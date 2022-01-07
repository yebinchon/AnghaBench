
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_hwmon {scalar_t__ hwmon; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int * hwmon; } ;


 int hwmon_device_unregister (scalar_t__) ;
 int kfree (struct nouveau_hwmon*) ;
 TYPE_1__* nouveau_drm (struct drm_device*) ;
 struct nouveau_hwmon* nouveau_hwmon (struct drm_device*) ;

void
nouveau_hwmon_fini(struct drm_device *dev)
{
}
