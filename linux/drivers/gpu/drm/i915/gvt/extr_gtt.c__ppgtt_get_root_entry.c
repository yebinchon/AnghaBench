
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int shadow_pdps; int guest_pdps; int root_entry_type; } ;
struct intel_vgpu_mm {scalar_t__ type; TYPE_4__* vgpu; TYPE_1__ ppgtt_mm; } ;
struct intel_gvt_gtt_pte_ops {int (* get_entry ) (int ,struct intel_gvt_gtt_entry*,unsigned long,int,int ,TYPE_4__*) ;} ;
struct intel_gvt_gtt_entry {int type; } ;
struct TYPE_8__ {TYPE_3__* gvt; } ;
struct TYPE_6__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_7__ {TYPE_2__ gtt; } ;


 int GEM_BUG_ON (int) ;
 scalar_t__ INTEL_GVT_MM_PPGTT ;
 int stub1 (int ,struct intel_gvt_gtt_entry*,unsigned long,int,int ,TYPE_4__*) ;
 int update_entry_type_for_real (struct intel_gvt_gtt_pte_ops*,struct intel_gvt_gtt_entry*,int) ;

__attribute__((used)) static void _ppgtt_get_root_entry(struct intel_vgpu_mm *mm,
  struct intel_gvt_gtt_entry *entry, unsigned long index,
  bool guest)
{
 struct intel_gvt_gtt_pte_ops *pte_ops = mm->vgpu->gvt->gtt.pte_ops;

 GEM_BUG_ON(mm->type != INTEL_GVT_MM_PPGTT);

 entry->type = mm->ppgtt_mm.root_entry_type;
 pte_ops->get_entry(guest ? mm->ppgtt_mm.guest_pdps :
      mm->ppgtt_mm.shadow_pdps,
      entry, index, 0, 0, mm->vgpu);
 update_entry_type_for_real(pte_ops, entry, 0);
}
