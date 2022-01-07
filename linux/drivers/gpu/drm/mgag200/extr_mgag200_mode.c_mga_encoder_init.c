
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int possible_crtcs; } ;
struct mga_encoder {struct drm_encoder base; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_ENCODER_DAC ;
 int GFP_KERNEL ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 struct mga_encoder* kzalloc (int,int ) ;
 int mga_encoder_encoder_funcs ;
 int mga_encoder_helper_funcs ;

__attribute__((used)) static struct drm_encoder *mga_encoder_init(struct drm_device *dev)
{
 struct drm_encoder *encoder;
 struct mga_encoder *mga_encoder;

 mga_encoder = kzalloc(sizeof(struct mga_encoder), GFP_KERNEL);
 if (!mga_encoder)
  return ((void*)0);

 encoder = &mga_encoder->base;
 encoder->possible_crtcs = 0x1;

 drm_encoder_init(dev, encoder, &mga_encoder_encoder_funcs,
    DRM_MODE_ENCODER_DAC, ((void*)0));
 drm_encoder_helper_add(encoder, &mga_encoder_helper_funcs);

 return encoder;
}
