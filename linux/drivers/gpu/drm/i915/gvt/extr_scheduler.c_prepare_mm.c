
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct execlist_ctx_descriptor_format {int addressing_mode; } ;
struct intel_vgpu_workload {struct intel_vgpu_mm* shadow_mm; struct intel_vgpu* vgpu; int ring_context_gpa; struct execlist_ctx_descriptor_format ctx_desc; } ;
struct intel_vgpu_mm {int dummy; } ;
struct intel_vgpu {int dummy; } ;
typedef enum intel_gvt_gtt_type { ____Placeholder_intel_gvt_gtt_type } intel_gvt_gtt_type ;


 int EINVAL ;
 int GTT_TYPE_PPGTT_ROOT_L3_ENTRY ;
 int GTT_TYPE_PPGTT_ROOT_L4_ENTRY ;
 int GVT_RING_CTX_NR_PDPS ;
 scalar_t__ IS_ERR (struct intel_vgpu_mm*) ;
 int PTR_ERR (struct intel_vgpu_mm*) ;
 int gvt_vgpu_err (char*) ;
 struct intel_vgpu_mm* intel_vgpu_get_ppgtt_mm (struct intel_vgpu*,int,int *) ;
 int read_guest_pdps (struct intel_vgpu*,int ,void*) ;

__attribute__((used)) static int prepare_mm(struct intel_vgpu_workload *workload)
{
 struct execlist_ctx_descriptor_format *desc = &workload->ctx_desc;
 struct intel_vgpu_mm *mm;
 struct intel_vgpu *vgpu = workload->vgpu;
 enum intel_gvt_gtt_type root_entry_type;
 u64 pdps[GVT_RING_CTX_NR_PDPS];

 switch (desc->addressing_mode) {
 case 1:
  root_entry_type = GTT_TYPE_PPGTT_ROOT_L3_ENTRY;
  break;
 case 3:
  root_entry_type = GTT_TYPE_PPGTT_ROOT_L4_ENTRY;
  break;
 default:
  gvt_vgpu_err("Advanced Context mode(SVM) is not supported!\n");
  return -EINVAL;
 }

 read_guest_pdps(workload->vgpu, workload->ring_context_gpa, (void *)pdps);

 mm = intel_vgpu_get_ppgtt_mm(workload->vgpu, root_entry_type, pdps);
 if (IS_ERR(mm))
  return PTR_ERR(mm);

 workload->shadow_mm = mm;
 return 0;
}
