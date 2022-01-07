
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;


 unsigned int AMDGPU_CRTC_IRQ_VBLANK6 ;
 int EINVAL ;
 int dce_virtual_set_crtc_vblank_interrupt_state (struct amdgpu_device*,unsigned int,int) ;

__attribute__((used)) static int dce_virtual_set_crtc_irq_state(struct amdgpu_device *adev,
       struct amdgpu_irq_src *source,
       unsigned type,
       enum amdgpu_interrupt_state state)
{
 if (type > AMDGPU_CRTC_IRQ_VBLANK6)
  return -EINVAL;

 dce_virtual_set_crtc_vblank_interrupt_state(adev, type, state);

 return 0;
}
