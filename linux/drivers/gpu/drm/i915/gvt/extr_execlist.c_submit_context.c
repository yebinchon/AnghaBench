
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu_workload {int emulate_schedule_in; int elsp_dwords; int complete; int prepare; } ;
struct intel_vgpu_submission {TYPE_1__* execlist; } ;
struct intel_vgpu {struct intel_vgpu_submission submission; } ;
struct execlist_ctx_descriptor_format {int dummy; } ;
struct TYPE_2__ {int elsp_dwords; } ;


 scalar_t__ IS_ERR (struct intel_vgpu_workload*) ;
 int PTR_ERR (struct intel_vgpu_workload*) ;
 int complete_execlist_workload ;
 int gvt_dbg_el (char*,struct intel_vgpu_workload*,int) ;
 struct intel_vgpu_workload* intel_vgpu_create_workload (struct intel_vgpu*,int,struct execlist_ctx_descriptor_format*) ;
 int intel_vgpu_queue_workload (struct intel_vgpu_workload*) ;
 int prepare_execlist_workload ;

__attribute__((used)) static int submit_context(struct intel_vgpu *vgpu, int ring_id,
  struct execlist_ctx_descriptor_format *desc,
  bool emulate_schedule_in)
{
 struct intel_vgpu_submission *s = &vgpu->submission;
 struct intel_vgpu_workload *workload = ((void*)0);

 workload = intel_vgpu_create_workload(vgpu, ring_id, desc);
 if (IS_ERR(workload))
  return PTR_ERR(workload);

 workload->prepare = prepare_execlist_workload;
 workload->complete = complete_execlist_workload;
 workload->emulate_schedule_in = emulate_schedule_in;

 if (emulate_schedule_in)
  workload->elsp_dwords = s->execlist[ring_id].elsp_dwords;

 gvt_dbg_el("workload %p emulate schedule_in %d\n", workload,
   emulate_schedule_in);

 intel_vgpu_queue_workload(workload);
 return 0;
}
