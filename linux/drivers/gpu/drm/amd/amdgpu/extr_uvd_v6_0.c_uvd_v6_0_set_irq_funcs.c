
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_enc_rings; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_3__ uvd; } ;
struct TYPE_5__ {int num_types; int * funcs; } ;
struct TYPE_4__ {TYPE_2__ irq; } ;


 scalar_t__ uvd_v6_0_enc_support (struct amdgpu_device*) ;
 int uvd_v6_0_irq_funcs ;

__attribute__((used)) static void uvd_v6_0_set_irq_funcs(struct amdgpu_device *adev)
{
 if (uvd_v6_0_enc_support(adev))
  adev->uvd.inst->irq.num_types = adev->uvd.num_enc_rings + 1;
 else
  adev->uvd.inst->irq.num_types = 1;

 adev->uvd.inst->irq.funcs = &uvd_v6_0_irq_funcs;
}
