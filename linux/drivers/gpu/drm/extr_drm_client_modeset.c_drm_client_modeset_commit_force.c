
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_client_dev {int modeset_mutex; struct drm_device* dev; } ;


 int drm_client_modeset_commit_atomic (struct drm_client_dev*,int) ;
 int drm_client_modeset_commit_legacy (struct drm_client_dev*) ;
 scalar_t__ drm_drv_uses_atomic_modeset (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_client_modeset_commit_force(struct drm_client_dev *client)
{
 struct drm_device *dev = client->dev;
 int ret;

 mutex_lock(&client->modeset_mutex);
 if (drm_drv_uses_atomic_modeset(dev))
  ret = drm_client_modeset_commit_atomic(client, 1);
 else
  ret = drm_client_modeset_commit_legacy(client);
 mutex_unlock(&client->modeset_mutex);

 return ret;
}
