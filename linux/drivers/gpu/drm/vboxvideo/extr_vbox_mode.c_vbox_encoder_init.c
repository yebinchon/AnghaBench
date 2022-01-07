
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int possible_crtcs; } ;
struct vbox_encoder {struct drm_encoder base; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_ENCODER_DAC ;
 int GFP_KERNEL ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 struct vbox_encoder* kzalloc (int,int ) ;
 int vbox_enc_funcs ;

__attribute__((used)) static struct drm_encoder *vbox_encoder_init(struct drm_device *dev,
          unsigned int i)
{
 struct vbox_encoder *vbox_encoder;

 vbox_encoder = kzalloc(sizeof(*vbox_encoder), GFP_KERNEL);
 if (!vbox_encoder)
  return ((void*)0);

 drm_encoder_init(dev, &vbox_encoder->base, &vbox_enc_funcs,
    DRM_MODE_ENCODER_DAC, ((void*)0));

 vbox_encoder->base.possible_crtcs = 1 << i;
 return &vbox_encoder->base;
}
