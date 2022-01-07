
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct drm_encoder {scalar_t__ possible_crtcs; } ;
struct rockchip_hdmi {int vpll_clk; int hdmi; TYPE_1__* dev; int phy; struct drm_encoder encoder; struct rockchip_hdmi* chip_data; } ;
struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int data; } ;
struct dw_hdmi_plat_data {struct rockchip_hdmi* phy_data; } ;
struct drm_device {int dummy; } ;
struct device {int of_node; } ;


 int DRM_DEV_ERROR (TYPE_1__*,char*,...) ;
 int DRM_MODE_ENCODER_TMDS ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct dw_hdmi_plat_data* devm_kmemdup (TYPE_1__*,int ,int,int ) ;
 struct rockchip_hdmi* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_phy_optional_get (struct device*,char*) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 scalar_t__ drm_of_find_possible_crtcs (struct drm_device*,int ) ;
 int dw_hdmi_bind (struct platform_device*,struct drm_encoder*,struct dw_hdmi_plat_data*) ;
 int dw_hdmi_rockchip_dt_ids ;
 int dw_hdmi_rockchip_encoder_funcs ;
 int dw_hdmi_rockchip_encoder_helper_funcs ;
 struct of_device_id* of_match_node (int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rockchip_hdmi*) ;
 int rockchip_hdmi_parse_dt (struct rockchip_hdmi*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
     void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct dw_hdmi_plat_data *plat_data;
 const struct of_device_id *match;
 struct drm_device *drm = data;
 struct drm_encoder *encoder;
 struct rockchip_hdmi *hdmi;
 int ret;

 if (!pdev->dev.of_node)
  return -ENODEV;

 hdmi = devm_kzalloc(&pdev->dev, sizeof(*hdmi), GFP_KERNEL);
 if (!hdmi)
  return -ENOMEM;

 match = of_match_node(dw_hdmi_rockchip_dt_ids, pdev->dev.of_node);
 plat_data = devm_kmemdup(&pdev->dev, match->data,
          sizeof(*plat_data), GFP_KERNEL);
 if (!plat_data)
  return -ENOMEM;

 hdmi->dev = &pdev->dev;
 hdmi->chip_data = plat_data->phy_data;
 plat_data->phy_data = hdmi;
 encoder = &hdmi->encoder;

 encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);






 if (encoder->possible_crtcs == 0)
  return -EPROBE_DEFER;

 ret = rockchip_hdmi_parse_dt(hdmi);
 if (ret) {
  DRM_DEV_ERROR(hdmi->dev, "Unable to parse OF data\n");
  return ret;
 }

 ret = clk_prepare_enable(hdmi->vpll_clk);
 if (ret) {
  DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
         ret);
  return ret;
 }

 hdmi->phy = devm_phy_optional_get(dev, "hdmi");
 if (IS_ERR(hdmi->phy)) {
  ret = PTR_ERR(hdmi->phy);
  if (ret != -EPROBE_DEFER)
   DRM_DEV_ERROR(hdmi->dev, "failed to get phy\n");
  return ret;
 }

 drm_encoder_helper_add(encoder, &dw_hdmi_rockchip_encoder_helper_funcs);
 drm_encoder_init(drm, encoder, &dw_hdmi_rockchip_encoder_funcs,
    DRM_MODE_ENCODER_TMDS, ((void*)0));

 platform_set_drvdata(pdev, hdmi);

 hdmi->hdmi = dw_hdmi_bind(pdev, encoder, plat_data);





 if (IS_ERR(hdmi->hdmi)) {
  ret = PTR_ERR(hdmi->hdmi);
  drm_encoder_cleanup(encoder);
  clk_disable_unprepare(hdmi->vpll_clk);
 }

 return ret;
}
