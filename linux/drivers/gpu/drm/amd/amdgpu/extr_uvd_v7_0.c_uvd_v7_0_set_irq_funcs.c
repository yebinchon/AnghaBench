
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_uvd_inst; int harvest_config; TYPE_3__* inst; scalar_t__ num_enc_rings; } ;
struct amdgpu_device {TYPE_1__ uvd; } ;
struct TYPE_5__ {int * funcs; scalar_t__ num_types; } ;
struct TYPE_6__ {TYPE_2__ irq; } ;


 int uvd_v7_0_irq_funcs ;

__attribute__((used)) static void uvd_v7_0_set_irq_funcs(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->uvd.num_uvd_inst; i++) {
  if (adev->uvd.harvest_config & (1 << i))
   continue;
  adev->uvd.inst[i].irq.num_types = adev->uvd.num_enc_rings + 1;
  adev->uvd.inst[i].irq.funcs = &uvd_v7_0_irq_funcs;
 }
}
