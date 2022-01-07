
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {scalar_t__ nbox; int dirty; } ;
typedef TYPE_1__ drm_mga_sarea_t ;
struct TYPE_5__ {TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_mga_private_t ;


 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 scalar_t__ MGA_NR_SAREA_CLIPRECTS ;
 int MGA_UPLOAD_CONTEXT ;
 int WRAP_TEST_WITH_RETURN (TYPE_2__*) ;
 int mga_dma_dispatch_swap (struct drm_device*) ;

__attribute__((used)) static int mga_dma_swap(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_mga_private_t *dev_priv = dev->dev_private;
 drm_mga_sarea_t *sarea_priv = dev_priv->sarea_priv;

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 if (sarea_priv->nbox > MGA_NR_SAREA_CLIPRECTS)
  sarea_priv->nbox = MGA_NR_SAREA_CLIPRECTS;

 WRAP_TEST_WITH_RETURN(dev_priv);

 mga_dma_dispatch_swap(dev);



 dev_priv->sarea_priv->dirty |= MGA_UPLOAD_CONTEXT;

 return 0;
}
