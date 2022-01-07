
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * funcs; int num_types; } ;
struct TYPE_6__ {TYPE_1__ irq; } ;
struct TYPE_7__ {TYPE_2__ thermal; } ;
struct TYPE_8__ {TYPE_3__ dpm; } ;
struct amdgpu_device {TYPE_4__ pm; } ;


 int AMDGPU_THERMAL_IRQ_LAST ;
 int si_dpm_irq_funcs ;

__attribute__((used)) static void si_dpm_set_irq_funcs(struct amdgpu_device *adev)
{
 adev->pm.dpm.thermal.irq.num_types = AMDGPU_THERMAL_IRQ_LAST;
 adev->pm.dpm.thermal.irq.funcs = &si_dpm_irq_funcs;
}
