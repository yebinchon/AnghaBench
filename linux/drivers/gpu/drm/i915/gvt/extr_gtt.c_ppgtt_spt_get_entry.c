
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int gfn; int pde_ips; } ;
struct intel_vgpu_ppgtt_spt {TYPE_2__ guest_page; TYPE_3__* vgpu; } ;
struct intel_gvt_gtt_pte_ops {int (* get_entry ) (void*,struct intel_gvt_gtt_entry*,unsigned long,int,int,TYPE_3__*) ;} ;
struct intel_gvt_gtt_entry {int val64; int type; } ;
struct TYPE_4__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct intel_gvt {TYPE_1__ gtt; } ;
struct TYPE_6__ {struct intel_gvt* gvt; } ;


 int EINVAL ;
 int I915_GTT_PAGE_SHIFT ;
 scalar_t__ WARN (int,char*) ;
 int get_entry_type (int) ;
 int gtt_type_is_entry (int ) ;
 int gvt_vdbg_mm (char*,int,int ,unsigned long,int ) ;
 int stub1 (void*,struct intel_gvt_gtt_entry*,unsigned long,int,int,TYPE_3__*) ;
 int update_entry_type_for_real (struct intel_gvt_gtt_pte_ops*,struct intel_gvt_gtt_entry*,int) ;

__attribute__((used)) static inline int ppgtt_spt_get_entry(
  struct intel_vgpu_ppgtt_spt *spt,
  void *page_table, int type,
  struct intel_gvt_gtt_entry *e, unsigned long index,
  bool guest)
{
 struct intel_gvt *gvt = spt->vgpu->gvt;
 struct intel_gvt_gtt_pte_ops *ops = gvt->gtt.pte_ops;
 int ret;

 e->type = get_entry_type(type);

 if (WARN(!gtt_type_is_entry(e->type), "invalid entry type\n"))
  return -EINVAL;

 ret = ops->get_entry(page_table, e, index, guest,
   spt->guest_page.gfn << I915_GTT_PAGE_SHIFT,
   spt->vgpu);
 if (ret)
  return ret;

 update_entry_type_for_real(ops, e, guest ?
       spt->guest_page.pde_ips : 0);

 gvt_vdbg_mm("read ppgtt entry, spt type %d, entry type %d, index %lu, value %llx\n",
      type, e->type, index, e->val64);
 return 0;
}
