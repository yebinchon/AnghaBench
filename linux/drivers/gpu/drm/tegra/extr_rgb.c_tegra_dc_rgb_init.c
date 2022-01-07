
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int possible_crtcs; } ;
struct TYPE_9__ {int dpms; } ;
struct tegra_output {TYPE_1__ encoder; int dev; TYPE_3__ connector; } ;
struct tegra_dc {int base; struct tegra_output* rgb; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_CONNECTOR_LVDS ;
 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_ENCODER_LVDS ;
 int ENODEV ;
 int dev_err (int ,char*,int) ;
 int drm_connector_attach_encoder (TYPE_3__*,TYPE_1__*) ;
 int drm_connector_helper_add (TYPE_3__*,int *) ;
 int drm_connector_init (struct drm_device*,TYPE_3__*,int *,int ) ;
 int drm_connector_register (TYPE_3__*) ;
 int drm_crtc_mask (int *) ;
 int drm_encoder_helper_add (TYPE_1__*,int *) ;
 int drm_encoder_init (struct drm_device*,TYPE_1__*,int *,int ,int *) ;
 int tegra_output_init (struct drm_device*,struct tegra_output*) ;
 int tegra_rgb_connector_funcs ;
 int tegra_rgb_connector_helper_funcs ;
 int tegra_rgb_encoder_funcs ;
 int tegra_rgb_encoder_helper_funcs ;

int tegra_dc_rgb_init(struct drm_device *drm, struct tegra_dc *dc)
{
 struct tegra_output *output = dc->rgb;
 int err;

 if (!dc->rgb)
  return -ENODEV;

 drm_connector_init(drm, &output->connector, &tegra_rgb_connector_funcs,
      DRM_MODE_CONNECTOR_LVDS);
 drm_connector_helper_add(&output->connector,
     &tegra_rgb_connector_helper_funcs);
 output->connector.dpms = DRM_MODE_DPMS_OFF;

 drm_encoder_init(drm, &output->encoder, &tegra_rgb_encoder_funcs,
    DRM_MODE_ENCODER_LVDS, ((void*)0));
 drm_encoder_helper_add(&output->encoder,
          &tegra_rgb_encoder_helper_funcs);

 drm_connector_attach_encoder(&output->connector,
       &output->encoder);
 drm_connector_register(&output->connector);

 err = tegra_output_init(drm, output);
 if (err < 0) {
  dev_err(output->dev, "failed to initialize output: %d\n", err);
  return err;
 }






 output->encoder.possible_crtcs = drm_crtc_mask(&dc->base);

 return 0;
}
