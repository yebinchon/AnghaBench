
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int shadow_pdps; int guest_pdps; } ;
struct intel_vgpu_mm {TYPE_4__* vgpu; TYPE_3__ ppgtt_mm; } ;
struct intel_gvt_gtt_pte_ops {int (* set_entry ) (int ,struct intel_gvt_gtt_entry*,unsigned long,int,int ,TYPE_4__*) ;} ;
struct intel_gvt_gtt_entry {int dummy; } ;
struct TYPE_8__ {TYPE_2__* gvt; } ;
struct TYPE_5__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_6__ {TYPE_1__ gtt; } ;


 int stub1 (int ,struct intel_gvt_gtt_entry*,unsigned long,int,int ,TYPE_4__*) ;

__attribute__((used)) static void _ppgtt_set_root_entry(struct intel_vgpu_mm *mm,
  struct intel_gvt_gtt_entry *entry, unsigned long index,
  bool guest)
{
 struct intel_gvt_gtt_pte_ops *pte_ops = mm->vgpu->gvt->gtt.pte_ops;

 pte_ops->set_entry(guest ? mm->ppgtt_mm.guest_pdps :
      mm->ppgtt_mm.shadow_pdps,
      entry, index, 0, 0, mm->vgpu);
}
