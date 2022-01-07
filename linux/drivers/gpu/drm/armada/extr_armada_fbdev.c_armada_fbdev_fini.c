
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_fb_helper {TYPE_2__* fb; } ;
struct drm_device {struct armada_private* dev_private; } ;
struct armada_private {struct drm_fb_helper* fbdev; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* destroy ) (TYPE_2__*) ;} ;


 int drm_fb_helper_fini (struct drm_fb_helper*) ;
 int drm_fb_helper_unregister_fbi (struct drm_fb_helper*) ;
 int stub1 (TYPE_2__*) ;

void armada_fbdev_fini(struct drm_device *dev)
{
 struct armada_private *priv = dev->dev_private;
 struct drm_fb_helper *fbh = priv->fbdev;

 if (fbh) {
  drm_fb_helper_unregister_fbi(fbh);

  drm_fb_helper_fini(fbh);

  if (fbh->fb)
   fbh->fb->funcs->destroy(fbh->fb);

  priv->fbdev = ((void*)0);
 }
}
