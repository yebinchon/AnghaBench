
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int via_dma_cleanup (struct drm_device*) ;

int via_do_cleanup_map(struct drm_device *dev)
{
 via_dma_cleanup(dev);

 return 0;
}
