
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct mdp4_dtv_encoder {void* mdp_clk; void* hdmi_clk; struct drm_encoder base; } ;
struct drm_device {int dev; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int DRM_MODE_ENCODER_TMDS ;
 int ENOMEM ;
 struct drm_encoder* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int bs_init (struct mdp4_dtv_encoder*) ;
 void* devm_clk_get (int ,char*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 struct mdp4_dtv_encoder* kzalloc (int,int ) ;
 int mdp4_dtv_encoder_destroy (struct drm_encoder*) ;
 int mdp4_dtv_encoder_funcs ;
 int mdp4_dtv_encoder_helper_funcs ;

struct drm_encoder *mdp4_dtv_encoder_init(struct drm_device *dev)
{
 struct drm_encoder *encoder = ((void*)0);
 struct mdp4_dtv_encoder *mdp4_dtv_encoder;
 int ret;

 mdp4_dtv_encoder = kzalloc(sizeof(*mdp4_dtv_encoder), GFP_KERNEL);
 if (!mdp4_dtv_encoder) {
  ret = -ENOMEM;
  goto fail;
 }

 encoder = &mdp4_dtv_encoder->base;

 drm_encoder_init(dev, encoder, &mdp4_dtv_encoder_funcs,
    DRM_MODE_ENCODER_TMDS, ((void*)0));
 drm_encoder_helper_add(encoder, &mdp4_dtv_encoder_helper_funcs);

 mdp4_dtv_encoder->hdmi_clk = devm_clk_get(dev->dev, "hdmi_clk");
 if (IS_ERR(mdp4_dtv_encoder->hdmi_clk)) {
  DRM_DEV_ERROR(dev->dev, "failed to get hdmi_clk\n");
  ret = PTR_ERR(mdp4_dtv_encoder->hdmi_clk);
  goto fail;
 }

 mdp4_dtv_encoder->mdp_clk = devm_clk_get(dev->dev, "tv_clk");
 if (IS_ERR(mdp4_dtv_encoder->mdp_clk)) {
  DRM_DEV_ERROR(dev->dev, "failed to get tv_clk\n");
  ret = PTR_ERR(mdp4_dtv_encoder->mdp_clk);
  goto fail;
 }

 bs_init(mdp4_dtv_encoder);

 return encoder;

fail:
 if (encoder)
  mdp4_dtv_encoder_destroy(encoder);

 return ERR_PTR(ret);
}
