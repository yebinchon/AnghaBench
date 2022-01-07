
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_dsi_host {int tx_buf_paddr; int tx_buf; int tx_size; int * tx_gem_obj; struct drm_device* dev; } ;
struct msm_drm_private {TYPE_1__* kms; } ;
struct drm_device {int dev; struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {int aspace; } ;


 int dma_free_coherent (int ,int ,int ,int ) ;
 int drm_gem_object_put_unlocked (int *) ;
 int msm_gem_unpin_iova (int *,int ) ;

__attribute__((used)) static void dsi_tx_buf_free(struct msm_dsi_host *msm_host)
{
 struct drm_device *dev = msm_host->dev;
 struct msm_drm_private *priv;







 if (!dev)
  return;

 priv = dev->dev_private;
 if (msm_host->tx_gem_obj) {
  msm_gem_unpin_iova(msm_host->tx_gem_obj, priv->kms->aspace);
  drm_gem_object_put_unlocked(msm_host->tx_gem_obj);
  msm_host->tx_gem_obj = ((void*)0);
 }

 if (msm_host->tx_buf)
  dma_free_coherent(dev->dev, msm_host->tx_size, msm_host->tx_buf,
   msm_host->tx_buf_paddr);
}
