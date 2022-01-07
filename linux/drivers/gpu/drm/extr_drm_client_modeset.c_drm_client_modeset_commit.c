
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_client_dev {struct drm_device* dev; } ;


 int EBUSY ;
 int drm_client_modeset_commit_force (struct drm_client_dev*) ;
 int drm_master_internal_acquire (struct drm_device*) ;
 int drm_master_internal_release (struct drm_device*) ;

int drm_client_modeset_commit(struct drm_client_dev *client)
{
 struct drm_device *dev = client->dev;
 int ret;

 if (!drm_master_internal_acquire(dev))
  return -EBUSY;

 ret = drm_client_modeset_commit_force(client);

 drm_master_internal_release(dev);

 return ret;
}
