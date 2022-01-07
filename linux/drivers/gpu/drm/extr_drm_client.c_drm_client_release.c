
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int dev; } ;
struct drm_client_dev {TYPE_1__* funcs; int name; struct drm_device* dev; } ;
struct TYPE_2__ {int owner; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int ) ;
 int drm_client_close (struct drm_client_dev*) ;
 int drm_client_modeset_free (struct drm_client_dev*) ;
 int drm_dev_put (struct drm_device*) ;
 int module_put (int ) ;

void drm_client_release(struct drm_client_dev *client)
{
 struct drm_device *dev = client->dev;

 DRM_DEV_DEBUG_KMS(dev->dev, "%s\n", client->name);

 drm_client_modeset_free(client);
 drm_client_close(client);
 drm_dev_put(dev);
 if (client->funcs)
  module_put(client->funcs->owner);
}
