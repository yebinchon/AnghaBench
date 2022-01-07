
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_workload {int ring_id; int elsp_dwords; int emulate_schedule_in; struct intel_vgpu* vgpu; } ;
struct intel_vgpu_submission {int * execlist; } ;
struct intel_vgpu {struct intel_vgpu_submission submission; } ;
struct execlist_ctx_descriptor_format {int dummy; } ;


 int emulate_execlist_schedule_in (int *,struct execlist_ctx_descriptor_format*) ;
 struct execlist_ctx_descriptor_format* get_desc_from_elsp_dwords (int *,int) ;
 int gvt_vgpu_err (char*) ;

__attribute__((used)) static int prepare_execlist_workload(struct intel_vgpu_workload *workload)
{
 struct intel_vgpu *vgpu = workload->vgpu;
 struct intel_vgpu_submission *s = &vgpu->submission;
 struct execlist_ctx_descriptor_format ctx[2];
 int ring_id = workload->ring_id;
 int ret;

 if (!workload->emulate_schedule_in)
  return 0;

 ctx[0] = *get_desc_from_elsp_dwords(&workload->elsp_dwords, 0);
 ctx[1] = *get_desc_from_elsp_dwords(&workload->elsp_dwords, 1);

 ret = emulate_execlist_schedule_in(&s->execlist[ring_id], ctx);
 if (ret) {
  gvt_vgpu_err("fail to emulate execlist schedule in\n");
  return ret;
 }
 return 0;
}
