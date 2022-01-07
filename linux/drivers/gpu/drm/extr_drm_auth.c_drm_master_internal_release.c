
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int master_mutex; } ;


 int mutex_unlock (int *) ;

void drm_master_internal_release(struct drm_device *dev)
{
 mutex_unlock(&dev->master_mutex);
}
