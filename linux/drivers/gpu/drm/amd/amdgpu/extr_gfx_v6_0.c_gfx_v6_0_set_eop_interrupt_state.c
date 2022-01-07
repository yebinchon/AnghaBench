
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;





 int gfx_v6_0_set_compute_eop_interrupt_state (struct amdgpu_device*,int,int) ;
 int gfx_v6_0_set_gfx_eop_interrupt_state (struct amdgpu_device*,int) ;

__attribute__((used)) static int gfx_v6_0_set_eop_interrupt_state(struct amdgpu_device *adev,
         struct amdgpu_irq_src *src,
         unsigned type,
         enum amdgpu_interrupt_state state)
{
 switch (type) {
 case 128:
  gfx_v6_0_set_gfx_eop_interrupt_state(adev, state);
  break;
 case 130:
  gfx_v6_0_set_compute_eop_interrupt_state(adev, 0, state);
  break;
 case 129:
  gfx_v6_0_set_compute_eop_interrupt_state(adev, 1, state);
  break;
 default:
  break;
 }
 return 0;
}
