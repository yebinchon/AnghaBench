
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_minor {int dev; } ;


 int drm_dev_put (int ) ;

void drm_minor_release(struct drm_minor *minor)
{
 drm_dev_put(minor->dev);
}
