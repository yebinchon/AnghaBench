
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ipu_soc {int dummy; } ;
struct drm_crtc {int port; } ;
struct ipu_crtc {TYPE_1__** plane; int irq; TYPE_4__* dev; struct drm_crtc base; } ;
struct ipu_client_platformdata {scalar_t__ dp; int * dma; int of_node; } ;
struct drm_device {int dummy; } ;
struct TYPE_9__ {int parent; } ;
struct TYPE_8__ {int base; } ;


 int DRM_PLANE_TYPE_OVERLAY ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int EINVAL ;
 int IPU_DP_FLOW_SYNC_BG ;
 int IPU_DP_FLOW_SYNC_FG ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int dev_err (TYPE_4__*,char*,int) ;
 struct ipu_soc* dev_get_drvdata (int ) ;
 int devm_request_irq (TYPE_4__*,int ,int ,int ,char*,struct ipu_crtc*) ;
 int disable_irq (int ) ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,struct drm_crtc*,int *,int *,int *,int *) ;
 int drm_crtc_mask (struct drm_crtc*) ;
 int ipu_crtc_funcs ;
 int ipu_get_resources (struct ipu_crtc*,struct ipu_client_platformdata*) ;
 int ipu_helper_funcs ;
 int ipu_irq_handler ;
 int ipu_plane_get_resources (TYPE_1__*) ;
 void* ipu_plane_init (struct drm_device*,struct ipu_soc*,int ,int,int ,int ) ;
 int ipu_plane_irq (TYPE_1__*) ;
 int ipu_plane_put_resources (TYPE_1__*) ;
 int ipu_put_resources (struct ipu_crtc*) ;

__attribute__((used)) static int ipu_crtc_init(struct ipu_crtc *ipu_crtc,
 struct ipu_client_platformdata *pdata, struct drm_device *drm)
{
 struct ipu_soc *ipu = dev_get_drvdata(ipu_crtc->dev->parent);
 struct drm_crtc *crtc = &ipu_crtc->base;
 int dp = -EINVAL;
 int ret;

 ret = ipu_get_resources(ipu_crtc, pdata);
 if (ret) {
  dev_err(ipu_crtc->dev, "getting resources failed with %d.\n",
    ret);
  return ret;
 }

 if (pdata->dp >= 0)
  dp = IPU_DP_FLOW_SYNC_BG;
 ipu_crtc->plane[0] = ipu_plane_init(drm, ipu, pdata->dma[0], dp, 0,
         DRM_PLANE_TYPE_PRIMARY);
 if (IS_ERR(ipu_crtc->plane[0])) {
  ret = PTR_ERR(ipu_crtc->plane[0]);
  goto err_put_resources;
 }

 crtc->port = pdata->of_node;
 drm_crtc_helper_add(crtc, &ipu_helper_funcs);
 drm_crtc_init_with_planes(drm, crtc, &ipu_crtc->plane[0]->base, ((void*)0),
      &ipu_crtc_funcs, ((void*)0));

 ret = ipu_plane_get_resources(ipu_crtc->plane[0]);
 if (ret) {
  dev_err(ipu_crtc->dev, "getting plane 0 resources failed with %d.\n",
   ret);
  goto err_put_resources;
 }


 if (pdata->dp >= 0 && pdata->dma[1] > 0) {
  ipu_crtc->plane[1] = ipu_plane_init(drm, ipu, pdata->dma[1],
      IPU_DP_FLOW_SYNC_FG,
      drm_crtc_mask(&ipu_crtc->base),
      DRM_PLANE_TYPE_OVERLAY);
  if (IS_ERR(ipu_crtc->plane[1])) {
   ipu_crtc->plane[1] = ((void*)0);
  } else {
   ret = ipu_plane_get_resources(ipu_crtc->plane[1]);
   if (ret) {
    dev_err(ipu_crtc->dev, "getting plane 1 "
     "resources failed with %d.\n", ret);
    goto err_put_plane0_res;
   }
  }
 }

 ipu_crtc->irq = ipu_plane_irq(ipu_crtc->plane[0]);
 ret = devm_request_irq(ipu_crtc->dev, ipu_crtc->irq, ipu_irq_handler, 0,
   "imx_drm", ipu_crtc);
 if (ret < 0) {
  dev_err(ipu_crtc->dev, "irq request failed with %d.\n", ret);
  goto err_put_plane1_res;
 }

 disable_irq(ipu_crtc->irq);

 return 0;

err_put_plane1_res:
 if (ipu_crtc->plane[1])
  ipu_plane_put_resources(ipu_crtc->plane[1]);
err_put_plane0_res:
 ipu_plane_put_resources(ipu_crtc->plane[0]);
err_put_resources:
 ipu_put_resources(ipu_crtc);

 return ret;
}
