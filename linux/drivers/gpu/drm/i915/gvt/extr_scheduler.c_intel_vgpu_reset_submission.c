
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu_submission {TYPE_1__* ops; int active; } ;
struct intel_vgpu {struct intel_vgpu_submission submission; } ;
typedef int intel_engine_mask_t ;
struct TYPE_2__ {int (* reset ) (struct intel_vgpu*,int ) ;} ;


 int intel_vgpu_clean_workloads (struct intel_vgpu*,int ) ;
 int stub1 (struct intel_vgpu*,int ) ;

void intel_vgpu_reset_submission(struct intel_vgpu *vgpu,
     intel_engine_mask_t engine_mask)
{
 struct intel_vgpu_submission *s = &vgpu->submission;

 if (!s->active)
  return;

 intel_vgpu_clean_workloads(vgpu, engine_mask);
 s->ops->reset(vgpu, engine_mask);
}
