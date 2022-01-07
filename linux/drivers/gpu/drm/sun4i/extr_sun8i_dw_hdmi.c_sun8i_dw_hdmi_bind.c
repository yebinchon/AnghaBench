
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_encoder {scalar_t__ possible_crtcs; } ;
struct dw_hdmi_plat_data {int mode_valid; } ;
struct sun8i_dw_hdmi {scalar_t__ ddc_en; scalar_t__ regulator; scalar_t__ rst_ctrl; scalar_t__ clk_tmds; scalar_t__ hdmi; int phy; TYPE_1__* quirks; struct drm_encoder encoder; TYPE_2__* dev; struct dw_hdmi_plat_data plat_data; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct drm_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct TYPE_4__ {int mode_valid; } ;


 int DRM_MODE_ENCODER_TMDS ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (struct device*,char*) ;
 scalar_t__ devm_clk_get (struct device*,char*) ;
 struct sun8i_dw_hdmi* devm_kzalloc (TYPE_2__*,int,int ) ;
 scalar_t__ devm_regulator_get (struct device*,char*) ;
 scalar_t__ devm_reset_control_get (struct device*,char*) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 scalar_t__ dw_hdmi_bind (struct platform_device*,struct drm_encoder*,struct dw_hdmi_plat_data*) ;
 scalar_t__ gpiod_get_optional (TYPE_2__*,char*,int ) ;
 int gpiod_put (scalar_t__) ;
 int gpiod_set_value (scalar_t__,int) ;
 TYPE_1__* of_device_get_match_data (struct device*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int platform_device_put (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct sun8i_dw_hdmi*) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int reset_control_assert (scalar_t__) ;
 int reset_control_deassert (scalar_t__) ;
 int sun8i_dw_hdmi_encoder_funcs ;
 int sun8i_dw_hdmi_encoder_helper_funcs ;
 int sun8i_dw_hdmi_find_connector_pdev (struct device*,struct platform_device**) ;
 scalar_t__ sun8i_dw_hdmi_find_possible_crtcs (struct drm_device*,int ) ;
 int sun8i_hdmi_phy_init (int ) ;
 int sun8i_hdmi_phy_probe (struct sun8i_dw_hdmi*,struct device_node*) ;
 int sun8i_hdmi_phy_remove (struct sun8i_dw_hdmi*) ;
 int sun8i_hdmi_phy_set_ops (int ,struct dw_hdmi_plat_data*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int sun8i_dw_hdmi_bind(struct device *dev, struct device *master,
         void *data)
{
 struct platform_device *pdev = to_platform_device(dev), *connector_pdev;
 struct dw_hdmi_plat_data *plat_data;
 struct drm_device *drm = data;
 struct device_node *phy_node;
 struct drm_encoder *encoder;
 struct sun8i_dw_hdmi *hdmi;
 int ret;

 if (!pdev->dev.of_node)
  return -ENODEV;

 hdmi = devm_kzalloc(&pdev->dev, sizeof(*hdmi), GFP_KERNEL);
 if (!hdmi)
  return -ENOMEM;

 plat_data = &hdmi->plat_data;
 hdmi->dev = &pdev->dev;
 encoder = &hdmi->encoder;

 hdmi->quirks = of_device_get_match_data(dev);

 encoder->possible_crtcs =
  sun8i_dw_hdmi_find_possible_crtcs(drm, dev->of_node);






 if (encoder->possible_crtcs == 0)
  return -EPROBE_DEFER;

 hdmi->rst_ctrl = devm_reset_control_get(dev, "ctrl");
 if (IS_ERR(hdmi->rst_ctrl)) {
  dev_err(dev, "Could not get ctrl reset control\n");
  return PTR_ERR(hdmi->rst_ctrl);
 }

 hdmi->clk_tmds = devm_clk_get(dev, "tmds");
 if (IS_ERR(hdmi->clk_tmds)) {
  dev_err(dev, "Couldn't get the tmds clock\n");
  return PTR_ERR(hdmi->clk_tmds);
 }

 hdmi->regulator = devm_regulator_get(dev, "hvcc");
 if (IS_ERR(hdmi->regulator)) {
  dev_err(dev, "Couldn't get regulator\n");
  return PTR_ERR(hdmi->regulator);
 }

 ret = sun8i_dw_hdmi_find_connector_pdev(dev, &connector_pdev);
 if (!ret) {
  hdmi->ddc_en = gpiod_get_optional(&connector_pdev->dev,
        "ddc-en", GPIOD_OUT_HIGH);
  platform_device_put(connector_pdev);

  if (IS_ERR(hdmi->ddc_en)) {
   dev_err(dev, "Couldn't get ddc-en gpio\n");
   return PTR_ERR(hdmi->ddc_en);
  }
 }

 ret = regulator_enable(hdmi->regulator);
 if (ret) {
  dev_err(dev, "Failed to enable regulator\n");
  goto err_unref_ddc_en;
 }

 gpiod_set_value(hdmi->ddc_en, 1);

 ret = reset_control_deassert(hdmi->rst_ctrl);
 if (ret) {
  dev_err(dev, "Could not deassert ctrl reset control\n");
  goto err_disable_ddc_en;
 }

 ret = clk_prepare_enable(hdmi->clk_tmds);
 if (ret) {
  dev_err(dev, "Could not enable tmds clock\n");
  goto err_assert_ctrl_reset;
 }

 phy_node = of_parse_phandle(dev->of_node, "phys", 0);
 if (!phy_node) {
  dev_err(dev, "Can't found PHY phandle\n");
  goto err_disable_clk_tmds;
 }

 ret = sun8i_hdmi_phy_probe(hdmi, phy_node);
 of_node_put(phy_node);
 if (ret) {
  dev_err(dev, "Couldn't get the HDMI PHY\n");
  goto err_disable_clk_tmds;
 }

 drm_encoder_helper_add(encoder, &sun8i_dw_hdmi_encoder_helper_funcs);
 drm_encoder_init(drm, encoder, &sun8i_dw_hdmi_encoder_funcs,
    DRM_MODE_ENCODER_TMDS, ((void*)0));

 sun8i_hdmi_phy_init(hdmi->phy);

 plat_data->mode_valid = hdmi->quirks->mode_valid;
 sun8i_hdmi_phy_set_ops(hdmi->phy, plat_data);

 platform_set_drvdata(pdev, hdmi);

 hdmi->hdmi = dw_hdmi_bind(pdev, encoder, plat_data);





 if (IS_ERR(hdmi->hdmi)) {
  ret = PTR_ERR(hdmi->hdmi);
  goto cleanup_encoder;
 }

 return 0;

cleanup_encoder:
 drm_encoder_cleanup(encoder);
 sun8i_hdmi_phy_remove(hdmi);
err_disable_clk_tmds:
 clk_disable_unprepare(hdmi->clk_tmds);
err_assert_ctrl_reset:
 reset_control_assert(hdmi->rst_ctrl);
err_disable_ddc_en:
 gpiod_set_value(hdmi->ddc_en, 0);
 regulator_disable(hdmi->regulator);
err_unref_ddc_en:
 if (hdmi->ddc_en)
  gpiod_put(hdmi->ddc_en);

 return ret;
}
