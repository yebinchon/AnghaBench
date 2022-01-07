
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int possible_crtcs; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_ENCODER_TMDS ;
 int GFP_KERNEL ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 struct drm_encoder* kzalloc (int,int ) ;
 int udl_enc_funcs ;
 int udl_helper_funcs ;

struct drm_encoder *udl_encoder_init(struct drm_device *dev)
{
 struct drm_encoder *encoder;

 encoder = kzalloc(sizeof(struct drm_encoder), GFP_KERNEL);
 if (!encoder)
  return ((void*)0);

 drm_encoder_init(dev, encoder, &udl_enc_funcs, DRM_MODE_ENCODER_TMDS,
    ((void*)0));
 drm_encoder_helper_add(encoder, &udl_helper_funcs);
 encoder->possible_crtcs = 1;
 return encoder;
}
