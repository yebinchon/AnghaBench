
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct TYPE_3__ {int possible_crtcs; } ;
struct amdgpu_encoder {int encoder_id; TYPE_1__ base; } ;
struct amdgpu_device {int dummy; } ;


 int DRM_MODE_ENCODER_TMDS ;
 int amdgpu_dm_encoder_funcs ;
 int amdgpu_dm_encoder_helper_funcs ;
 int amdgpu_dm_get_encoder_crtc_mask (struct amdgpu_device*) ;
 int drm_encoder_helper_add (TYPE_1__*,int *) ;
 int drm_encoder_init (struct drm_device*,TYPE_1__*,int *,int ,int *) ;

__attribute__((used)) static int amdgpu_dm_encoder_init(struct drm_device *dev,
      struct amdgpu_encoder *aencoder,
      uint32_t link_index)
{
 struct amdgpu_device *adev = dev->dev_private;

 int res = drm_encoder_init(dev,
       &aencoder->base,
       &amdgpu_dm_encoder_funcs,
       DRM_MODE_ENCODER_TMDS,
       ((void*)0));

 aencoder->base.possible_crtcs = amdgpu_dm_get_encoder_crtc_mask(adev);

 if (!res)
  aencoder->encoder_id = link_index;
 else
  aencoder->encoder_id = -1;

 drm_encoder_helper_add(&aencoder->base, &amdgpu_dm_encoder_helper_funcs);

 return res;
}
