
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct msm_dsi_host {int tx_gem_obj; struct drm_device* dev; } ;
struct msm_drm_private {TYPE_1__* kms; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {int aspace; } ;


 int EINVAL ;
 int msm_gem_get_and_pin_iova (int ,int ,int *) ;

int dsi_dma_base_get_6g(struct msm_dsi_host *msm_host, uint64_t *dma_base)
{
 struct drm_device *dev = msm_host->dev;
 struct msm_drm_private *priv = dev->dev_private;

 if (!dma_base)
  return -EINVAL;

 return msm_gem_get_and_pin_iova(msm_host->tx_gem_obj,
    priv->kms->aspace, dma_base);
}
