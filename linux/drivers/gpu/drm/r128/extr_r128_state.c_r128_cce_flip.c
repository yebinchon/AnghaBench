
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {int page_flipping; } ;
typedef TYPE_1__ drm_r128_private_t ;


 int COMMIT_RING () ;
 int DEV_INIT_TEST_WITH_RETURN (TYPE_1__*) ;
 int DRM_DEBUG (char*) ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int RING_SPACE_TEST_WITH_RETURN (TYPE_1__*) ;
 int r128_cce_dispatch_flip (struct drm_device*) ;
 int r128_do_init_pageflip (struct drm_device*) ;

__attribute__((used)) static int r128_cce_flip(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 DEV_INIT_TEST_WITH_RETURN(dev_priv);

 RING_SPACE_TEST_WITH_RETURN(dev_priv);

 if (!dev_priv->page_flipping)
  r128_do_init_pageflip(dev);

 r128_cce_dispatch_flip(dev);

 COMMIT_RING();
 return 0;
}
