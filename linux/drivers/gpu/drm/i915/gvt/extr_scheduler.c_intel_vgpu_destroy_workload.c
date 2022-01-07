
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu_workload {scalar_t__ shadow_mm; int wa_ctx; TYPE_1__* vgpu; } ;
struct intel_vgpu_submission {int workloads; } ;
struct TYPE_2__ {struct intel_vgpu_submission submission; } ;


 int intel_vgpu_mm_put (scalar_t__) ;
 int kmem_cache_free (int ,struct intel_vgpu_workload*) ;
 int release_shadow_batch_buffer (struct intel_vgpu_workload*) ;
 int release_shadow_wa_ctx (int *) ;

void intel_vgpu_destroy_workload(struct intel_vgpu_workload *workload)
{
 struct intel_vgpu_submission *s = &workload->vgpu->submission;

 release_shadow_batch_buffer(workload);
 release_shadow_wa_ctx(&workload->wa_ctx);

 if (workload->shadow_mm)
  intel_vgpu_mm_put(workload->shadow_mm);

 kmem_cache_free(s->workloads, workload);
}
