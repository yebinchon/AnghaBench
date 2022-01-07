
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;
 int gfx_v9_0_set_compute_eop_interrupt_state (struct amdgpu_device*,int,int,int) ;
 int gfx_v9_0_set_gfx_eop_interrupt_state (struct amdgpu_device*,int) ;

__attribute__((used)) static int gfx_v9_0_set_eop_interrupt_state(struct amdgpu_device *adev,
         struct amdgpu_irq_src *src,
         unsigned type,
         enum amdgpu_interrupt_state state)
{
 switch (type) {
 case 128:
  gfx_v9_0_set_gfx_eop_interrupt_state(adev, state);
  break;
 case 136:
  gfx_v9_0_set_compute_eop_interrupt_state(adev, 1, 0, state);
  break;
 case 135:
  gfx_v9_0_set_compute_eop_interrupt_state(adev, 1, 1, state);
  break;
 case 134:
  gfx_v9_0_set_compute_eop_interrupt_state(adev, 1, 2, state);
  break;
 case 133:
  gfx_v9_0_set_compute_eop_interrupt_state(adev, 1, 3, state);
  break;
 case 132:
  gfx_v9_0_set_compute_eop_interrupt_state(adev, 2, 0, state);
  break;
 case 131:
  gfx_v9_0_set_compute_eop_interrupt_state(adev, 2, 1, state);
  break;
 case 130:
  gfx_v9_0_set_compute_eop_interrupt_state(adev, 2, 2, state);
  break;
 case 129:
  gfx_v9_0_set_compute_eop_interrupt_state(adev, 2, 3, state);
  break;
 default:
  break;
 }
 return 0;
}
