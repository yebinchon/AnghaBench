
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_hdmi_plat_data {int dummy; } ;
struct dw_hdmi {int bridge; } ;
struct drm_encoder {int dummy; } ;


 int DRM_ERROR (char*) ;
 struct dw_hdmi* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dw_hdmi*) ;
 struct dw_hdmi* __dw_hdmi_probe (struct platform_device*,struct dw_hdmi_plat_data const*) ;
 int drm_bridge_attach (struct drm_encoder*,int *,int *) ;
 int dw_hdmi_remove (struct dw_hdmi*) ;

struct dw_hdmi *dw_hdmi_bind(struct platform_device *pdev,
        struct drm_encoder *encoder,
        const struct dw_hdmi_plat_data *plat_data)
{
 struct dw_hdmi *hdmi;
 int ret;

 hdmi = __dw_hdmi_probe(pdev, plat_data);
 if (IS_ERR(hdmi))
  return hdmi;

 ret = drm_bridge_attach(encoder, &hdmi->bridge, ((void*)0));
 if (ret) {
  dw_hdmi_remove(hdmi);
  DRM_ERROR("Failed to initialize bridge with drm\n");
  return ERR_PTR(ret);
 }

 return hdmi;
}
