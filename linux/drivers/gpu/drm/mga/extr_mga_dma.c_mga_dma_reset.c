
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_mga_private_t ;


 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int mga_do_dma_reset (int *) ;

int mga_dma_reset(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 drm_mga_private_t *dev_priv = (drm_mga_private_t *) dev->dev_private;

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 return mga_do_dma_reset(dev_priv);
}
