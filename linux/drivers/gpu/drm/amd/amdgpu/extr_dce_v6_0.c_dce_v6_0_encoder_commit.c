
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_device {int dummy; } ;


 int DRM_MODE_DPMS_ON ;
 int amdgpu_atombios_encoder_dpms (struct drm_encoder*,int ) ;
 int amdgpu_atombios_scratch_regs_lock (struct amdgpu_device*,int) ;

__attribute__((used)) static void dce_v6_0_encoder_commit(struct drm_encoder *encoder)
{

 struct drm_device *dev = encoder->dev;
 struct amdgpu_device *adev = dev->dev_private;


 amdgpu_atombios_encoder_dpms(encoder, DRM_MODE_DPMS_ON);
 amdgpu_atombios_scratch_regs_lock(adev, 0);
}
