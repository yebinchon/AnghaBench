
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int ctxlist_mutex; } ;


 int mutex_destroy (int *) ;

void drm_legacy_destroy_members(struct drm_device *dev)
{
 mutex_destroy(&dev->ctxlist_mutex);
}
