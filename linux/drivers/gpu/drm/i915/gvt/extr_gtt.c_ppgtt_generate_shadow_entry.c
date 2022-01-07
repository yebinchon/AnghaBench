
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mfn; } ;
struct intel_vgpu_ppgtt_spt {TYPE_1__ shadow_page; TYPE_4__* vgpu; } ;
struct intel_gvt_gtt_pte_ops {int (* set_pfn ) (struct intel_gvt_gtt_entry*,int ) ;int (* clear_ips ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {scalar_t__ type; int val64; } ;
struct TYPE_8__ {TYPE_3__* gvt; } ;
struct TYPE_6__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_7__ {TYPE_2__ gtt; } ;


 scalar_t__ GTT_TYPE_PPGTT_PDE_ENTRY ;
 int stub1 (struct intel_gvt_gtt_entry*) ;
 int stub2 (struct intel_gvt_gtt_entry*,int ) ;

__attribute__((used)) static inline void ppgtt_generate_shadow_entry(struct intel_gvt_gtt_entry *se,
  struct intel_vgpu_ppgtt_spt *s, struct intel_gvt_gtt_entry *ge)
{
 struct intel_gvt_gtt_pte_ops *ops = s->vgpu->gvt->gtt.pte_ops;

 se->type = ge->type;
 se->val64 = ge->val64;


 if (se->type == GTT_TYPE_PPGTT_PDE_ENTRY)
  ops->clear_ips(se);

 ops->set_pfn(se, s->shadow_page.mfn);
}
