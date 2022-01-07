
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * funcs; scalar_t__ num_types; } ;
struct amdgpu_device {TYPE_1__ crtc_irq; } ;


 scalar_t__ AMDGPU_CRTC_IRQ_VBLANK6 ;
 int dce_virtual_crtc_irq_funcs ;

__attribute__((used)) static void dce_virtual_set_irq_funcs(struct amdgpu_device *adev)
{
 adev->crtc_irq.num_types = AMDGPU_CRTC_IRQ_VBLANK6 + 1;
 adev->crtc_irq.funcs = &dce_virtual_crtc_irq_funcs;
}
