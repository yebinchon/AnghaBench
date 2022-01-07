
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shadowed; int shadow_pdps; } ;
struct intel_vgpu_mm {TYPE_1__ ppgtt_mm; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int id; struct intel_gvt* gvt; } ;
struct intel_gvt_gtt_pte_ops {int (* test_present ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {scalar_t__ val64; int type; } ;
struct intel_gvt_gtt {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct intel_gvt {struct intel_gvt_gtt gtt; } ;


 int ARRAY_SIZE (int ) ;
 int ppgtt_get_shadow_root_entry (struct intel_vgpu_mm*,struct intel_gvt_gtt_entry*,int) ;
 int ppgtt_invalidate_spt_by_shadow_entry (struct intel_vgpu*,struct intel_gvt_gtt_entry*) ;
 int ppgtt_set_shadow_root_entry (struct intel_vgpu_mm*,struct intel_gvt_gtt_entry*,int) ;
 int stub1 (struct intel_gvt_gtt_entry*) ;
 int trace_spt_guest_change (int ,char*,int *,int ,scalar_t__,int) ;

__attribute__((used)) static void invalidate_ppgtt_mm(struct intel_vgpu_mm *mm)
{
 struct intel_vgpu *vgpu = mm->vgpu;
 struct intel_gvt *gvt = vgpu->gvt;
 struct intel_gvt_gtt *gtt = &gvt->gtt;
 struct intel_gvt_gtt_pte_ops *ops = gtt->pte_ops;
 struct intel_gvt_gtt_entry se;
 int index;

 if (!mm->ppgtt_mm.shadowed)
  return;

 for (index = 0; index < ARRAY_SIZE(mm->ppgtt_mm.shadow_pdps); index++) {
  ppgtt_get_shadow_root_entry(mm, &se, index);

  if (!ops->test_present(&se))
   continue;

  ppgtt_invalidate_spt_by_shadow_entry(vgpu, &se);
  se.val64 = 0;
  ppgtt_set_shadow_root_entry(mm, &se, index);

  trace_spt_guest_change(vgpu->id, "destroy root pointer",
           ((void*)0), se.type, se.val64, index);
 }

 mm->ppgtt_mm.shadowed = 0;
}
