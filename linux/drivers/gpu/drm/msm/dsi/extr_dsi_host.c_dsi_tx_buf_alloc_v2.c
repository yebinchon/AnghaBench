
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int tx_size; int tx_buf; int tx_buf_paddr; struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,int,int *,int ) ;

int dsi_tx_buf_alloc_v2(struct msm_dsi_host *msm_host, int size)
{
 struct drm_device *dev = msm_host->dev;

 msm_host->tx_buf = dma_alloc_coherent(dev->dev, size,
     &msm_host->tx_buf_paddr, GFP_KERNEL);
 if (!msm_host->tx_buf)
  return -ENOMEM;

 msm_host->tx_size = size;

 return 0;
}
