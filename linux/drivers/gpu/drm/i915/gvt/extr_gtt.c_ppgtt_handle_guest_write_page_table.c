
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct intel_vgpu_ppgtt_spt {TYPE_1__ shadow_page; struct intel_vgpu* vgpu; } ;
struct TYPE_10__ {TYPE_4__* scratch_pt; } ;
struct intel_vgpu {TYPE_5__ gtt; TYPE_3__* gvt; } ;
struct intel_gvt_gtt_pte_ops {int (* test_present ) (struct intel_gvt_gtt_entry*) ;int (* set_pfn ) (struct intel_gvt_gtt_entry*,int ) ;int (* clear_pse ) (struct intel_gvt_gtt_entry*) ;int (* clear_64k_splited ) (struct intel_gvt_gtt_entry*) ;scalar_t__ (* test_64k_splited ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {scalar_t__ type; int val64; } ;
struct TYPE_9__ {int page_mfn; } ;
struct TYPE_7__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_8__ {TYPE_2__ gtt; } ;


 unsigned long GTT_64K_PTE_STRIDE ;
 scalar_t__ GTT_TYPE_PPGTT_PTE_1G_ENTRY ;
 scalar_t__ GTT_TYPE_PPGTT_PTE_2M_ENTRY ;
 int gvt_vdbg_mm (char*) ;
 int gvt_vgpu_err (char*,struct intel_vgpu_ppgtt_spt*,int ,scalar_t__) ;
 int ppgtt_get_shadow_entry (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ;
 int ppgtt_handle_guest_entry_add (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ;
 int ppgtt_handle_guest_entry_removal (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ;
 int ppgtt_set_shadow_entry (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ;
 int stub1 (struct intel_gvt_gtt_entry*) ;
 scalar_t__ stub2 (struct intel_gvt_gtt_entry*) ;
 int stub3 (struct intel_gvt_gtt_entry*) ;
 int stub4 (struct intel_gvt_gtt_entry*,int ) ;
 int stub5 (struct intel_gvt_gtt_entry*) ;
 int stub6 (struct intel_gvt_gtt_entry*,int ) ;
 int stub7 (struct intel_gvt_gtt_entry*,int ) ;

__attribute__((used)) static int ppgtt_handle_guest_write_page_table(
  struct intel_vgpu_ppgtt_spt *spt,
  struct intel_gvt_gtt_entry *we, unsigned long index)
{
 struct intel_vgpu *vgpu = spt->vgpu;
 int type = spt->shadow_page.type;
 struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
 struct intel_gvt_gtt_entry old_se;
 int new_present;
 int i, ret;

 new_present = ops->test_present(we);






 ppgtt_get_shadow_entry(spt, &old_se, index);

 if (new_present) {
  ret = ppgtt_handle_guest_entry_add(spt, we, index);
  if (ret)
   goto fail;
 }

 ret = ppgtt_handle_guest_entry_removal(spt, &old_se, index);
 if (ret)
  goto fail;

 if (!new_present) {

  if (ops->test_64k_splited(&old_se) &&
      !(index % GTT_64K_PTE_STRIDE)) {
   gvt_vdbg_mm("remove splited 64K shadow entries\n");
   for (i = 0; i < GTT_64K_PTE_STRIDE; i++) {
    ops->clear_64k_splited(&old_se);
    ops->set_pfn(&old_se,
     vgpu->gtt.scratch_pt[type].page_mfn);
    ppgtt_set_shadow_entry(spt, &old_se, index + i);
   }
  } else if (old_se.type == GTT_TYPE_PPGTT_PTE_2M_ENTRY ||
      old_se.type == GTT_TYPE_PPGTT_PTE_1G_ENTRY) {
   ops->clear_pse(&old_se);
   ops->set_pfn(&old_se,
         vgpu->gtt.scratch_pt[type].page_mfn);
   ppgtt_set_shadow_entry(spt, &old_se, index);
  } else {
   ops->set_pfn(&old_se,
         vgpu->gtt.scratch_pt[type].page_mfn);
   ppgtt_set_shadow_entry(spt, &old_se, index);
  }
 }

 return 0;
fail:
 gvt_vgpu_err("fail: shadow page %p guest entry 0x%llx type %d.\n",
   spt, we->val64, we->type);
 return ret;
}
