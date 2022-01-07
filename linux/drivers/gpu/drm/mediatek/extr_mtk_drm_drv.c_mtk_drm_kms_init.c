
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int * dma_parms; } ;
struct platform_device {struct device dev; } ;
struct mtk_drm_private {int dma_parms_allocated; struct device* dma_dev; TYPE_2__* data; struct device_node** comp_node; struct device* mutex_dev; struct device_node* mutex_node; } ;
struct TYPE_3__ {int min_width; int min_height; int max_width; int max_height; int * funcs; } ;
struct drm_device {int irq_enabled; struct device* dev; TYPE_1__ mode_config; struct mtk_drm_private* dev_private; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {size_t* main_path; size_t* ext_path; size_t* third_path; int third_len; int ext_len; int main_len; } ;


 scalar_t__ DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int MAX_CRTC ;
 int component_bind_all (struct device*,struct drm_device*) ;
 int component_unbind_all (struct device*,struct drm_device*) ;
 int dev_err (struct device*,char*,...) ;
 int * devm_kzalloc (struct device*,int,int ) ;
 int dma_set_max_seg_size (struct device*,unsigned int) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_mode_config_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_vblank_init (struct drm_device*,int ) ;
 int iommu_present (int *) ;
 int mtk_drm_crtc_create (struct drm_device*,size_t*,int ) ;
 int mtk_drm_mode_config_funcs ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int platform_bus_type ;

__attribute__((used)) static int mtk_drm_kms_init(struct drm_device *drm)
{
 struct mtk_drm_private *private = drm->dev_private;
 struct platform_device *pdev;
 struct device_node *np;
 struct device *dma_dev;
 int ret;

 if (!iommu_present(&platform_bus_type))
  return -EPROBE_DEFER;

 pdev = of_find_device_by_node(private->mutex_node);
 if (!pdev) {
  dev_err(drm->dev, "Waiting for disp-mutex device %pOF\n",
   private->mutex_node);
  of_node_put(private->mutex_node);
  return -EPROBE_DEFER;
 }
 private->mutex_dev = &pdev->dev;

 drm_mode_config_init(drm);

 drm->mode_config.min_width = 64;
 drm->mode_config.min_height = 64;






 drm->mode_config.max_width = 4096;
 drm->mode_config.max_height = 4096;
 drm->mode_config.funcs = &mtk_drm_mode_config_funcs;

 ret = component_bind_all(drm->dev, drm);
 if (ret)
  goto err_config_cleanup;






 ret = mtk_drm_crtc_create(drm, private->data->main_path,
      private->data->main_len);
 if (ret < 0)
  goto err_component_unbind;

 ret = mtk_drm_crtc_create(drm, private->data->ext_path,
      private->data->ext_len);
 if (ret < 0)
  goto err_component_unbind;

 ret = mtk_drm_crtc_create(drm, private->data->third_path,
      private->data->third_len);
 if (ret < 0)
  goto err_component_unbind;


 np = private->comp_node[private->data->main_path[0]] ?:
      private->comp_node[private->data->ext_path[0]];
 pdev = of_find_device_by_node(np);
 if (!pdev) {
  ret = -ENODEV;
  dev_err(drm->dev, "Need at least one OVL device\n");
  goto err_component_unbind;
 }

 dma_dev = &pdev->dev;
 private->dma_dev = dma_dev;





 if (!dma_dev->dma_parms) {
  private->dma_parms_allocated = 1;
  dma_dev->dma_parms =
   devm_kzalloc(drm->dev, sizeof(*dma_dev->dma_parms),
         GFP_KERNEL);
 }
 if (!dma_dev->dma_parms) {
  ret = -ENOMEM;
  goto err_component_unbind;
 }

 ret = dma_set_max_seg_size(dma_dev, (unsigned int)DMA_BIT_MASK(32));
 if (ret) {
  dev_err(dma_dev, "Failed to set DMA segment size\n");
  goto err_unset_dma_parms;
 }






 drm->irq_enabled = 1;
 ret = drm_vblank_init(drm, MAX_CRTC);
 if (ret < 0)
  goto err_unset_dma_parms;

 drm_kms_helper_poll_init(drm);
 drm_mode_config_reset(drm);

 return 0;

err_unset_dma_parms:
 if (private->dma_parms_allocated)
  dma_dev->dma_parms = ((void*)0);
err_component_unbind:
 component_unbind_all(drm->dev, drm);
err_config_cleanup:
 drm_mode_config_cleanup(drm);

 return ret;
}
