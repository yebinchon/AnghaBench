
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_vgpu_mm {scalar_t__ type; TYPE_3__* vgpu; } ;
struct intel_gvt_gtt_pte_ops {int (* get_entry ) (int *,struct intel_gvt_gtt_entry*,unsigned long,int,int ,TYPE_3__*) ;} ;
struct intel_gvt_gtt_entry {int dummy; } ;
struct TYPE_6__ {TYPE_2__* gvt; } ;
struct TYPE_4__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_5__ {TYPE_1__ gtt; } ;


 int GEM_BUG_ON (int) ;
 scalar_t__ INTEL_GVT_MM_GGTT ;
 int stub1 (int *,struct intel_gvt_gtt_entry*,unsigned long,int,int ,TYPE_3__*) ;

__attribute__((used)) static void ggtt_get_host_entry(struct intel_vgpu_mm *mm,
  struct intel_gvt_gtt_entry *entry, unsigned long index)
{
 struct intel_gvt_gtt_pte_ops *pte_ops = mm->vgpu->gvt->gtt.pte_ops;

 GEM_BUG_ON(mm->type != INTEL_GVT_MM_GGTT);

 pte_ops->get_entry(((void*)0), entry, index, 0, 0, mm->vgpu);
}
