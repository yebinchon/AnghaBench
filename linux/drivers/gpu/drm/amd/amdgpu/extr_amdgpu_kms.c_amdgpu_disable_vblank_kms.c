
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_device {int crtc_irq; } ;


 int amdgpu_display_crtc_idx_to_irq_type (struct amdgpu_device*,unsigned int) ;
 int amdgpu_irq_put (struct amdgpu_device*,int *,int) ;

void amdgpu_disable_vblank_kms(struct drm_device *dev, unsigned int pipe)
{
 struct amdgpu_device *adev = dev->dev_private;
 int idx = amdgpu_display_crtc_idx_to_irq_type(adev, pipe);

 amdgpu_irq_put(adev, &adev->crtc_irq, idx);
}
