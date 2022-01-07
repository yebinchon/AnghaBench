
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 int EINVAL ;
 int SQ_INTERRUPT_MSG_CTRL ;
 int STALL ;
 int WREG32_FIELD (int ,int ,int) ;

__attribute__((used)) static int gfx_v8_0_set_sq_int_state(struct amdgpu_device *adev,
         struct amdgpu_irq_src *source,
         unsigned int type,
         enum amdgpu_interrupt_state state)
{
 int enable_flag;

 switch (state) {
 case 129:
  enable_flag = 1;
  break;

 case 128:
  enable_flag = 0;
  break;

 default:
  return -EINVAL;
 }

 WREG32_FIELD(SQ_INTERRUPT_MSG_CTRL, STALL,
       enable_flag);

 return 0;
}
