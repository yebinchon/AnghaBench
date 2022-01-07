
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sun4i_tcon {TYPE_2__* crtc; TYPE_1__* dev; } ;
struct drm_encoder {int possible_crtcs; } ;
struct sun4i_rgb {struct drm_encoder encoder; scalar_t__ bridge; int connector; scalar_t__ panel; struct sun4i_tcon* tcon; } ;
struct drm_device {int dev; } ;
struct TYPE_4__ {int crtc; } ;
struct TYPE_3__ {int of_node; } ;


 int DRM_MODE_CONNECTOR_Unknown ;
 int DRM_MODE_ENCODER_NONE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 struct sun4i_rgb* devm_kzalloc (int ,int,int ) ;
 int drm_bridge_attach (struct drm_encoder*,scalar_t__,int *) ;
 int drm_connector_attach_encoder (int *,struct drm_encoder*) ;
 int drm_connector_helper_add (int *,int *) ;
 int drm_connector_init (struct drm_device*,int *,int *,int ) ;
 int drm_crtc_mask (int *) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int drm_of_find_panel_or_bridge (int ,int,int ,scalar_t__*,scalar_t__*) ;
 int drm_panel_attach (scalar_t__,int *) ;
 int sun4i_rgb_con_funcs ;
 int sun4i_rgb_con_helper_funcs ;
 int sun4i_rgb_enc_funcs ;
 int sun4i_rgb_enc_helper_funcs ;

int sun4i_rgb_init(struct drm_device *drm, struct sun4i_tcon *tcon)
{
 struct drm_encoder *encoder;
 struct sun4i_rgb *rgb;
 int ret;

 rgb = devm_kzalloc(drm->dev, sizeof(*rgb), GFP_KERNEL);
 if (!rgb)
  return -ENOMEM;
 rgb->tcon = tcon;
 encoder = &rgb->encoder;

 ret = drm_of_find_panel_or_bridge(tcon->dev->of_node, 1, 0,
       &rgb->panel, &rgb->bridge);
 if (ret) {
  dev_info(drm->dev, "No panel or bridge found... RGB output disabled\n");
  return 0;
 }

 drm_encoder_helper_add(&rgb->encoder,
          &sun4i_rgb_enc_helper_funcs);
 ret = drm_encoder_init(drm,
          &rgb->encoder,
          &sun4i_rgb_enc_funcs,
          DRM_MODE_ENCODER_NONE,
          ((void*)0));
 if (ret) {
  dev_err(drm->dev, "Couldn't initialise the rgb encoder\n");
  goto err_out;
 }


 rgb->encoder.possible_crtcs = drm_crtc_mask(&tcon->crtc->crtc);

 if (rgb->panel) {
  drm_connector_helper_add(&rgb->connector,
      &sun4i_rgb_con_helper_funcs);
  ret = drm_connector_init(drm, &rgb->connector,
      &sun4i_rgb_con_funcs,
      DRM_MODE_CONNECTOR_Unknown);
  if (ret) {
   dev_err(drm->dev, "Couldn't initialise the rgb connector\n");
   goto err_cleanup_connector;
  }

  drm_connector_attach_encoder(&rgb->connector,
        &rgb->encoder);

  ret = drm_panel_attach(rgb->panel, &rgb->connector);
  if (ret) {
   dev_err(drm->dev, "Couldn't attach our panel\n");
   goto err_cleanup_connector;
  }
 }

 if (rgb->bridge) {
  ret = drm_bridge_attach(encoder, rgb->bridge, ((void*)0));
  if (ret) {
   dev_err(drm->dev, "Couldn't attach our bridge\n");
   goto err_cleanup_connector;
  }
 }

 return 0;

err_cleanup_connector:
 drm_encoder_cleanup(&rgb->encoder);
err_out:
 return ret;
}
