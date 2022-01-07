
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u8 ;
struct msm_dsi_host {TYPE_2__* tx_gem_obj; int tx_size; struct drm_device* dev; } ;
struct msm_drm_private {TYPE_1__* kms; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_4__ {int aspace; } ;


 scalar_t__ IS_ERR (int *) ;
 int MSM_BO_UNCACHED ;
 int PTR_ERR (int *) ;
 int * msm_gem_kernel_new (struct drm_device*,int,int ,int ,TYPE_2__**,int *) ;
 int msm_gem_object_set_name (TYPE_2__*,char*) ;

int dsi_tx_buf_alloc_6g(struct msm_dsi_host *msm_host, int size)
{
 struct drm_device *dev = msm_host->dev;
 struct msm_drm_private *priv = dev->dev_private;
 uint64_t iova;
 u8 *data;

 data = msm_gem_kernel_new(dev, size, MSM_BO_UNCACHED,
     priv->kms->aspace,
     &msm_host->tx_gem_obj, &iova);

 if (IS_ERR(data)) {
  msm_host->tx_gem_obj = ((void*)0);
  return PTR_ERR(data);
 }

 msm_gem_object_set_name(msm_host->tx_gem_obj, "tx_gem");

 msm_host->tx_size = msm_host->tx_gem_obj->size;

 return 0;
}
