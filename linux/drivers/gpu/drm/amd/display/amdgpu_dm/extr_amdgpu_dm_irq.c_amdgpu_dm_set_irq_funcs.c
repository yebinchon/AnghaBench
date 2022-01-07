
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int * funcs; int num_types; } ;
struct TYPE_9__ {int num_hpd; int num_crtc; } ;
struct TYPE_8__ {int * funcs; int num_types; } ;
struct TYPE_7__ {int * funcs; int num_types; } ;
struct TYPE_6__ {int * funcs; int num_types; } ;
struct amdgpu_device {TYPE_5__ hpd_irq; TYPE_4__ mode_info; TYPE_3__ pageflip_irq; TYPE_2__ vupdate_irq; TYPE_1__ crtc_irq; } ;


 int dm_crtc_irq_funcs ;
 int dm_hpd_irq_funcs ;
 int dm_pageflip_irq_funcs ;
 int dm_vupdate_irq_funcs ;

void amdgpu_dm_set_irq_funcs(struct amdgpu_device *adev)
{

 adev->crtc_irq.num_types = adev->mode_info.num_crtc;
 adev->crtc_irq.funcs = &dm_crtc_irq_funcs;

 adev->vupdate_irq.num_types = adev->mode_info.num_crtc;
 adev->vupdate_irq.funcs = &dm_vupdate_irq_funcs;

 adev->pageflip_irq.num_types = adev->mode_info.num_crtc;
 adev->pageflip_irq.funcs = &dm_pageflip_irq_funcs;

 adev->hpd_irq.num_types = adev->mode_info.num_hpd;
 adev->hpd_irq.funcs = &dm_hpd_irq_funcs;
}
