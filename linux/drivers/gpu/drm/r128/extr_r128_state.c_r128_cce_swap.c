
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_5__ {scalar_t__ nbox; int dirty; } ;
typedef TYPE_1__ drm_r128_sarea_t ;
struct TYPE_6__ {TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_r128_private_t ;


 int COMMIT_RING () ;
 int DEV_INIT_TEST_WITH_RETURN (TYPE_2__*) ;
 int DRM_DEBUG (char*) ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 scalar_t__ R128_NR_SAREA_CLIPRECTS ;
 int R128_UPLOAD_CONTEXT ;
 int R128_UPLOAD_MASKS ;
 int RING_SPACE_TEST_WITH_RETURN (TYPE_2__*) ;
 int r128_cce_dispatch_swap (struct drm_device*) ;

__attribute__((used)) static int r128_cce_swap(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 drm_r128_sarea_t *sarea_priv = dev_priv->sarea_priv;
 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 DEV_INIT_TEST_WITH_RETURN(dev_priv);

 RING_SPACE_TEST_WITH_RETURN(dev_priv);

 if (sarea_priv->nbox > R128_NR_SAREA_CLIPRECTS)
  sarea_priv->nbox = R128_NR_SAREA_CLIPRECTS;

 r128_cce_dispatch_swap(dev);
 dev_priv->sarea_priv->dirty |= (R128_UPLOAD_CONTEXT |
     R128_UPLOAD_MASKS);

 COMMIT_RING();
 return 0;
}
