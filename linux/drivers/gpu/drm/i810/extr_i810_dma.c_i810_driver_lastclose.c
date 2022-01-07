
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int i810_dma_cleanup (struct drm_device*) ;

void i810_driver_lastclose(struct drm_device *dev)
{
 i810_dma_cleanup(dev);
}
