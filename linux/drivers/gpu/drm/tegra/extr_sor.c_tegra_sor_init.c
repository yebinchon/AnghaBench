
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int dpms; } ;
struct TYPE_10__ {TYPE_5__ connector; int encoder; int dev; } ;
struct tegra_sor {int clk_dp; int clk_safe; scalar_t__ rst; int dev; int clk; TYPE_2__ output; scalar_t__ aux; TYPE_1__* soc; } ;
struct host1x_client {int dev; int parent; } ;
struct drm_encoder_helper_funcs {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_9__ {scalar_t__ supports_dp; scalar_t__ supports_edp; scalar_t__ supports_lvds; scalar_t__ supports_hdmi; } ;


 int DRM_MODE_CONNECTOR_DisplayPort ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int DRM_MODE_CONNECTOR_LVDS ;
 int DRM_MODE_CONNECTOR_Unknown ;
 int DRM_MODE_CONNECTOR_eDP ;
 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_ENCODER_LVDS ;
 int DRM_MODE_ENCODER_NONE ;
 int DRM_MODE_ENCODER_TMDS ;
 int SOR_INT_CODEC_SCRATCH0 ;
 int SOR_INT_CODEC_SCRATCH1 ;
 int SOR_INT_ENABLE ;
 int SOR_INT_MASK ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 struct drm_device* dev_get_drvdata (int ) ;
 int drm_connector_attach_encoder (TYPE_5__*,int *) ;
 int drm_connector_helper_add (TYPE_5__*,int *) ;
 int drm_connector_init (struct drm_device*,TYPE_5__*,int *,int) ;
 int drm_connector_register (TYPE_5__*) ;
 int drm_dp_aux_attach (scalar_t__,TYPE_2__*) ;
 int drm_encoder_helper_add (int *,struct drm_encoder_helper_funcs const*) ;
 int drm_encoder_init (struct drm_device*,int *,int *,int,int *) ;
 struct tegra_sor* host1x_client_to_sor (struct host1x_client*) ;
 int reset_control_acquire (scalar_t__) ;
 int reset_control_assert (scalar_t__) ;
 int reset_control_deassert (scalar_t__) ;
 int reset_control_release (scalar_t__) ;
 int tegra_output_find_possible_crtcs (TYPE_2__*,struct drm_device*) ;
 int tegra_output_init (struct drm_device*,TYPE_2__*) ;
 int tegra_sor_connector_funcs ;
 int tegra_sor_connector_helper_funcs ;
 struct drm_encoder_helper_funcs tegra_sor_edp_helpers ;
 int tegra_sor_encoder_funcs ;
 struct drm_encoder_helper_funcs tegra_sor_hdmi_helpers ;
 int tegra_sor_writel (struct tegra_sor*,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_sor_init(struct host1x_client *client)
{
 struct drm_device *drm = dev_get_drvdata(client->parent);
 const struct drm_encoder_helper_funcs *helpers = ((void*)0);
 struct tegra_sor *sor = host1x_client_to_sor(client);
 int connector = DRM_MODE_CONNECTOR_Unknown;
 int encoder = DRM_MODE_ENCODER_NONE;
 u32 value;
 int err;

 if (!sor->aux) {
  if (sor->soc->supports_hdmi) {
   connector = DRM_MODE_CONNECTOR_HDMIA;
   encoder = DRM_MODE_ENCODER_TMDS;
   helpers = &tegra_sor_hdmi_helpers;
  } else if (sor->soc->supports_lvds) {
   connector = DRM_MODE_CONNECTOR_LVDS;
   encoder = DRM_MODE_ENCODER_LVDS;
  }
 } else {
  if (sor->soc->supports_edp) {
   connector = DRM_MODE_CONNECTOR_eDP;
   encoder = DRM_MODE_ENCODER_TMDS;
   helpers = &tegra_sor_edp_helpers;
  } else if (sor->soc->supports_dp) {
   connector = DRM_MODE_CONNECTOR_DisplayPort;
   encoder = DRM_MODE_ENCODER_TMDS;
  }
 }

 sor->output.dev = sor->dev;

 drm_connector_init(drm, &sor->output.connector,
      &tegra_sor_connector_funcs,
      connector);
 drm_connector_helper_add(&sor->output.connector,
     &tegra_sor_connector_helper_funcs);
 sor->output.connector.dpms = DRM_MODE_DPMS_OFF;

 drm_encoder_init(drm, &sor->output.encoder, &tegra_sor_encoder_funcs,
    encoder, ((void*)0));
 drm_encoder_helper_add(&sor->output.encoder, helpers);

 drm_connector_attach_encoder(&sor->output.connector,
       &sor->output.encoder);
 drm_connector_register(&sor->output.connector);

 err = tegra_output_init(drm, &sor->output);
 if (err < 0) {
  dev_err(client->dev, "failed to initialize output: %d\n", err);
  return err;
 }

 tegra_output_find_possible_crtcs(&sor->output, drm);

 if (sor->aux) {
  err = drm_dp_aux_attach(sor->aux, &sor->output);
  if (err < 0) {
   dev_err(sor->dev, "failed to attach DP: %d\n", err);
   return err;
  }
 }





 if (sor->rst) {
  err = reset_control_acquire(sor->rst);
  if (err < 0) {
   dev_err(sor->dev, "failed to acquire SOR reset: %d\n",
    err);
   return err;
  }

  err = reset_control_assert(sor->rst);
  if (err < 0) {
   dev_err(sor->dev, "failed to assert SOR reset: %d\n",
    err);
   return err;
  }
 }

 err = clk_prepare_enable(sor->clk);
 if (err < 0) {
  dev_err(sor->dev, "failed to enable clock: %d\n", err);
  return err;
 }

 usleep_range(1000, 3000);

 if (sor->rst) {
  err = reset_control_deassert(sor->rst);
  if (err < 0) {
   dev_err(sor->dev, "failed to deassert SOR reset: %d\n",
    err);
   return err;
  }

  reset_control_release(sor->rst);
 }

 err = clk_prepare_enable(sor->clk_safe);
 if (err < 0)
  return err;

 err = clk_prepare_enable(sor->clk_dp);
 if (err < 0)
  return err;






 value = SOR_INT_CODEC_SCRATCH1 | SOR_INT_CODEC_SCRATCH0;
 tegra_sor_writel(sor, value, SOR_INT_ENABLE);
 tegra_sor_writel(sor, value, SOR_INT_MASK);

 return 0;
}
