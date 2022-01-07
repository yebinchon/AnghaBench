
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int page_flipping; } ;
typedef TYPE_1__ drm_i810_private_t ;


 int DRM_DEBUG (char*) ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int i810_dma_dispatch_flip (struct drm_device*) ;
 int i810_do_init_pageflip (struct drm_device*) ;

__attribute__((used)) static int i810_flip_bufs(struct drm_device *dev, void *data,
     struct drm_file *file_priv)
{
 drm_i810_private_t *dev_priv = dev->dev_private;

 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 if (!dev_priv->page_flipping)
  i810_do_init_pageflip(dev);

 i810_dma_dispatch_flip(dev);
 return 0;
}
