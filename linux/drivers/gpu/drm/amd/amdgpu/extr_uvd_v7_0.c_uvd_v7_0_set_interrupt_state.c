
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;



__attribute__((used)) static int uvd_v7_0_set_interrupt_state(struct amdgpu_device *adev,
     struct amdgpu_irq_src *source,
     unsigned type,
     enum amdgpu_interrupt_state state)
{

 return 0;
}
