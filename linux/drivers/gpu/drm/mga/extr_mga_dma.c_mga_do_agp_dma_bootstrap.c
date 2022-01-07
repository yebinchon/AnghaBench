
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
typedef int drm_mga_dma_bootstrap_t ;


 int EINVAL ;

__attribute__((used)) static int mga_do_agp_dma_bootstrap(struct drm_device *dev,
        drm_mga_dma_bootstrap_t *dma_bs)
{
 return -EINVAL;
}
