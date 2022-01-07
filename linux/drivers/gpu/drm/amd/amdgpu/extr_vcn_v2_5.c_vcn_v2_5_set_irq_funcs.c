
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_vcn_inst; int harvest_config; TYPE_2__* inst; scalar_t__ num_enc_rings; } ;
struct amdgpu_device {TYPE_3__ vcn; } ;
struct TYPE_4__ {int * funcs; scalar_t__ num_types; } ;
struct TYPE_5__ {TYPE_1__ irq; } ;


 int vcn_v2_5_irq_funcs ;

__attribute__((used)) static void vcn_v2_5_set_irq_funcs(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->vcn.num_vcn_inst; ++i) {
  if (adev->vcn.harvest_config & (1 << i))
   continue;
  adev->vcn.inst[i].irq.num_types = adev->vcn.num_enc_rings + 2;
  adev->vcn.inst[i].irq.funcs = &vcn_v2_5_irq_funcs;
 }
}
