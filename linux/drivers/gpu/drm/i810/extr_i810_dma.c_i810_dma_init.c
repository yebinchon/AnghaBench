
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int drm_i810_private_t ;
struct TYPE_3__ {int func; } ;
typedef TYPE_1__ drm_i810_init_t ;


 int DRM_INFO (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;


 int i810_dma_cleanup (struct drm_device*) ;
 int i810_dma_initialize (struct drm_device*,int *,TYPE_1__*) ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static int i810_dma_init(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 drm_i810_private_t *dev_priv;
 drm_i810_init_t *init = data;
 int retcode = 0;

 switch (init->func) {
 case 128:
  DRM_INFO("Using v1.4 init.\n");
  dev_priv = kmalloc(sizeof(drm_i810_private_t), GFP_KERNEL);
  if (dev_priv == ((void*)0))
   return -ENOMEM;
  retcode = i810_dma_initialize(dev, dev_priv, init);
  break;

 case 129:
  DRM_INFO("DMA Cleanup\n");
  retcode = i810_dma_cleanup(dev);
  break;
 default:
  return -EINVAL;
 }

 return retcode;
}
