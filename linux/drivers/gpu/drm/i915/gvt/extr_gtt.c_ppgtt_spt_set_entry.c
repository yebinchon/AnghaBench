
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gfn; } ;
struct intel_vgpu_ppgtt_spt {TYPE_3__* vgpu; TYPE_1__ guest_page; } ;
struct intel_gvt_gtt_pte_ops {int (* set_entry ) (void*,struct intel_gvt_gtt_entry*,unsigned long,int,int,TYPE_3__*) ;} ;
struct intel_gvt_gtt_entry {int val64; int type; } ;
struct TYPE_5__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct intel_gvt {TYPE_2__ gtt; } ;
struct TYPE_6__ {struct intel_gvt* gvt; } ;


 int EINVAL ;
 int I915_GTT_PAGE_SHIFT ;
 scalar_t__ WARN (int,char*) ;
 int gtt_type_is_entry (int ) ;
 int gvt_vdbg_mm (char*,int,int ,unsigned long,int ) ;
 int stub1 (void*,struct intel_gvt_gtt_entry*,unsigned long,int,int,TYPE_3__*) ;

__attribute__((used)) static inline int ppgtt_spt_set_entry(
  struct intel_vgpu_ppgtt_spt *spt,
  void *page_table, int type,
  struct intel_gvt_gtt_entry *e, unsigned long index,
  bool guest)
{
 struct intel_gvt *gvt = spt->vgpu->gvt;
 struct intel_gvt_gtt_pte_ops *ops = gvt->gtt.pte_ops;

 if (WARN(!gtt_type_is_entry(e->type), "invalid entry type\n"))
  return -EINVAL;

 gvt_vdbg_mm("set ppgtt entry, spt type %d, entry type %d, index %lu, value %llx\n",
      type, e->type, index, e->val64);

 return ops->set_entry(page_table, e, index, guest,
   spt->guest_page.gfn << I915_GTT_PAGE_SHIFT,
   spt->vgpu);
}
