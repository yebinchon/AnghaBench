
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int ggtt_mm; } ;
struct intel_vgpu {TYPE_2__ gtt; struct intel_gvt* gvt; } ;
struct intel_gvt_gtt_pte_ops {int (* set_present ) (struct intel_gvt_gtt_entry*) ;int (* set_pfn ) (struct intel_gvt_gtt_entry*,int ) ;} ;
struct intel_gvt_gtt_entry {int type; } ;
struct TYPE_3__ {int scratch_mfn; struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct intel_gvt {TYPE_1__ gtt; struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;


 int GTT_TYPE_GGTT_PTE ;
 int PAGE_SHIFT ;
 int ggtt_get_host_entry (int ,struct intel_gvt_gtt_entry*,int) ;
 int ggtt_invalidate (struct drm_i915_private*) ;
 int ggtt_invalidate_pte (struct intel_vgpu*,struct intel_gvt_gtt_entry*) ;
 int ggtt_set_host_entry (int ,struct intel_gvt_gtt_entry*,int ) ;
 int stub1 (struct intel_gvt_gtt_entry*,int ) ;
 int stub2 (struct intel_gvt_gtt_entry*) ;
 int vgpu_aperture_gmadr_base (struct intel_vgpu*) ;
 int vgpu_aperture_sz (struct intel_vgpu*) ;
 int vgpu_hidden_gmadr_base (struct intel_vgpu*) ;
 int vgpu_hidden_sz (struct intel_vgpu*) ;

void intel_vgpu_reset_ggtt(struct intel_vgpu *vgpu, bool invalidate_old)
{
 struct intel_gvt *gvt = vgpu->gvt;
 struct drm_i915_private *dev_priv = gvt->dev_priv;
 struct intel_gvt_gtt_pte_ops *pte_ops = vgpu->gvt->gtt.pte_ops;
 struct intel_gvt_gtt_entry entry = {.type = GTT_TYPE_GGTT_PTE};
 struct intel_gvt_gtt_entry old_entry;
 u32 index;
 u32 num_entries;

 pte_ops->set_pfn(&entry, gvt->gtt.scratch_mfn);
 pte_ops->set_present(&entry);

 index = vgpu_aperture_gmadr_base(vgpu) >> PAGE_SHIFT;
 num_entries = vgpu_aperture_sz(vgpu) >> PAGE_SHIFT;
 while (num_entries--) {
  if (invalidate_old) {
   ggtt_get_host_entry(vgpu->gtt.ggtt_mm, &old_entry, index);
   ggtt_invalidate_pte(vgpu, &old_entry);
  }
  ggtt_set_host_entry(vgpu->gtt.ggtt_mm, &entry, index++);
 }

 index = vgpu_hidden_gmadr_base(vgpu) >> PAGE_SHIFT;
 num_entries = vgpu_hidden_sz(vgpu) >> PAGE_SHIFT;
 while (num_entries--) {
  if (invalidate_old) {
   ggtt_get_host_entry(vgpu->gtt.ggtt_mm, &old_entry, index);
   ggtt_invalidate_pte(vgpu, &old_entry);
  }
  ggtt_set_host_entry(vgpu->gtt.ggtt_mm, &entry, index++);
 }

 ggtt_invalidate(dev_priv);
}
