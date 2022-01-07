
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_hdmi_plat_data {int dummy; } ;
struct dw_hdmi {int bridge; } ;


 scalar_t__ IS_ERR (struct dw_hdmi*) ;
 struct dw_hdmi* __dw_hdmi_probe (struct platform_device*,struct dw_hdmi_plat_data const*) ;
 int drm_bridge_add (int *) ;

struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
         const struct dw_hdmi_plat_data *plat_data)
{
 struct dw_hdmi *hdmi;

 hdmi = __dw_hdmi_probe(pdev, plat_data);
 if (IS_ERR(hdmi))
  return hdmi;

 drm_bridge_add(&hdmi->bridge);

 return hdmi;
}
