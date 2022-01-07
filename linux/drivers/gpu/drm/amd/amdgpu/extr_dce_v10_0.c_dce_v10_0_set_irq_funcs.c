
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * funcs; int num_types; } ;
struct TYPE_8__ {scalar_t__ num_crtc; int num_hpd; } ;
struct TYPE_6__ {scalar_t__ num_types; int * funcs; } ;
struct TYPE_5__ {scalar_t__ num_types; int * funcs; } ;
struct amdgpu_device {TYPE_3__ hpd_irq; TYPE_4__ mode_info; TYPE_2__ pageflip_irq; TYPE_1__ crtc_irq; } ;


 scalar_t__ AMDGPU_CRTC_IRQ_VLINE1 ;
 int dce_v10_0_crtc_irq_funcs ;
 int dce_v10_0_hpd_irq_funcs ;
 int dce_v10_0_pageflip_irq_funcs ;

__attribute__((used)) static void dce_v10_0_set_irq_funcs(struct amdgpu_device *adev)
{
 if (adev->mode_info.num_crtc > 0)
  adev->crtc_irq.num_types = AMDGPU_CRTC_IRQ_VLINE1 + adev->mode_info.num_crtc;
 else
  adev->crtc_irq.num_types = 0;
 adev->crtc_irq.funcs = &dce_v10_0_crtc_irq_funcs;

 adev->pageflip_irq.num_types = adev->mode_info.num_crtc;
 adev->pageflip_irq.funcs = &dce_v10_0_pageflip_irq_funcs;

 adev->hpd_irq.num_types = adev->mode_info.num_hpd;
 adev->hpd_irq.funcs = &dce_v10_0_hpd_irq_funcs;
}
