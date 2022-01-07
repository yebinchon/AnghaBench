
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int possible_crtcs; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder {struct drm_encoder base; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct amdgpu_dm_connector {TYPE_1__ base; } ;
struct amdgpu_device {int dummy; } ;


 int DRM_MODE_ENCODER_DPMST ;
 int GFP_KERNEL ;
 int amdgpu_dm_encoder_funcs ;
 int amdgpu_dm_encoder_helper_funcs ;
 int amdgpu_dm_get_encoder_crtc_mask (struct amdgpu_device*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 struct amdgpu_encoder* kzalloc (int,int ) ;

__attribute__((used)) static struct amdgpu_encoder *
dm_dp_create_fake_mst_encoder(struct amdgpu_dm_connector *connector)
{
 struct drm_device *dev = connector->base.dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_encoder *amdgpu_encoder;
 struct drm_encoder *encoder;

 amdgpu_encoder = kzalloc(sizeof(*amdgpu_encoder), GFP_KERNEL);
 if (!amdgpu_encoder)
  return ((void*)0);

 encoder = &amdgpu_encoder->base;
 encoder->possible_crtcs = amdgpu_dm_get_encoder_crtc_mask(adev);

 drm_encoder_init(
  dev,
  &amdgpu_encoder->base,
  &amdgpu_dm_encoder_funcs,
  DRM_MODE_ENCODER_DPMST,
  ((void*)0));

 drm_encoder_helper_add(encoder, &amdgpu_dm_encoder_helper_funcs);

 return amdgpu_encoder;
}
