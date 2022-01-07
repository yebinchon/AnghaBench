
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct mdp4_dsi_encoder {struct drm_encoder base; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_ENCODER_DSI ;
 int ENOMEM ;
 struct drm_encoder* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 struct mdp4_dsi_encoder* kzalloc (int,int ) ;
 int mdp4_dsi_encoder_destroy (struct drm_encoder*) ;
 int mdp4_dsi_encoder_funcs ;
 int mdp4_dsi_encoder_helper_funcs ;

struct drm_encoder *mdp4_dsi_encoder_init(struct drm_device *dev)
{
 struct drm_encoder *encoder = ((void*)0);
 struct mdp4_dsi_encoder *mdp4_dsi_encoder;
 int ret;

 mdp4_dsi_encoder = kzalloc(sizeof(*mdp4_dsi_encoder), GFP_KERNEL);
 if (!mdp4_dsi_encoder) {
  ret = -ENOMEM;
  goto fail;
 }

 encoder = &mdp4_dsi_encoder->base;

 drm_encoder_init(dev, encoder, &mdp4_dsi_encoder_funcs,
    DRM_MODE_ENCODER_DSI, ((void*)0));
 drm_encoder_helper_add(encoder, &mdp4_dsi_encoder_helper_funcs);

 return encoder;

fail:
 if (encoder)
  mdp4_dsi_encoder_destroy(encoder);

 return ERR_PTR(ret);
}
