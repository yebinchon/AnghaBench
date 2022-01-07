
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_client_dev {int dev; } ;


 int drm_fb_helper_lastclose (int ) ;

__attribute__((used)) static int drm_fbdev_client_restore(struct drm_client_dev *client)
{
 drm_fb_helper_lastclose(client->dev);

 return 0;
}
