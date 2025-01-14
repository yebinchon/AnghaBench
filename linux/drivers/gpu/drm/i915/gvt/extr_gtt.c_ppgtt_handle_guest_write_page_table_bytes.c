
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_14__ {TYPE_6__* oos_page; int write_cnt; } ;
struct TYPE_10__ {int type; } ;
struct intel_vgpu_ppgtt_spt {TYPE_7__ guest_page; TYPE_3__ shadow_page; int post_shadow_bitmap; struct intel_vgpu* vgpu; } ;
struct TYPE_12__ {TYPE_4__* scratch_pt; } ;
struct intel_vgpu {TYPE_5__ gtt; TYPE_2__* gvt; } ;
struct intel_gvt_gtt_pte_ops {int (* set_entry ) (int ,struct intel_gvt_gtt_entry*,unsigned long,int,int ,struct intel_vgpu*) ;int (* set_pfn ) (struct intel_gvt_gtt_entry*,int ) ;} ;
struct intel_gvt_gtt_entry {scalar_t__ type; } ;
struct intel_gvt_device_info {int gtt_entry_size_shift; int gtt_entry_size; } ;
struct TYPE_13__ {int mem; } ;
struct TYPE_11__ {int page_mfn; } ;
struct TYPE_8__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_9__ {struct intel_gvt_device_info device_info; TYPE_1__ gtt; } ;


 unsigned long GTT_64K_PTE_STRIDE ;
 scalar_t__ GTT_TYPE_PPGTT_PTE_64K_ENTRY ;
 int PAGE_SIZE ;
 scalar_t__ can_do_out_of_sync (struct intel_vgpu_ppgtt_spt*) ;
 int enable_out_of_sync ;
 int gvt_vdbg_mm (char*,unsigned long) ;
 int ppgtt_allocate_oos_page (struct intel_vgpu_ppgtt_spt*) ;
 int ppgtt_get_guest_entry (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ;
 int ppgtt_get_shadow_entry (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ;
 int ppgtt_handle_guest_entry_removal (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ;
 int ppgtt_handle_guest_write_page_table (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ;
 int ppgtt_set_guest_page_oos (struct intel_vgpu_ppgtt_spt*) ;
 int ppgtt_set_post_shadow (struct intel_vgpu_ppgtt_spt*,unsigned long) ;
 int ppgtt_set_shadow_entry (struct intel_vgpu_ppgtt_spt*,struct intel_gvt_gtt_entry*,unsigned long) ;
 int stub1 (struct intel_gvt_gtt_entry*,int ) ;
 int stub2 (int ,struct intel_gvt_gtt_entry*,unsigned long,int,int ,struct intel_vgpu*) ;
 int test_bit (unsigned long,int ) ;

__attribute__((used)) static int ppgtt_handle_guest_write_page_table_bytes(
  struct intel_vgpu_ppgtt_spt *spt,
  u64 pa, void *p_data, int bytes)
{
 struct intel_vgpu *vgpu = spt->vgpu;
 struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
 const struct intel_gvt_device_info *info = &vgpu->gvt->device_info;
 struct intel_gvt_gtt_entry we, se;
 unsigned long index;
 int ret;

 index = (pa & (PAGE_SIZE - 1)) >> info->gtt_entry_size_shift;

 ppgtt_get_guest_entry(spt, &we, index);






 if (we.type == GTT_TYPE_PPGTT_PTE_64K_ENTRY &&
     (index % GTT_64K_PTE_STRIDE)) {
  gvt_vdbg_mm("Ignore write to unused PTE entry, index %lu\n",
       index);
  return 0;
 }

 if (bytes == info->gtt_entry_size) {
  ret = ppgtt_handle_guest_write_page_table(spt, &we, index);
  if (ret)
   return ret;
 } else {
  if (!test_bit(index, spt->post_shadow_bitmap)) {
   int type = spt->shadow_page.type;

   ppgtt_get_shadow_entry(spt, &se, index);
   ret = ppgtt_handle_guest_entry_removal(spt, &se, index);
   if (ret)
    return ret;
   ops->set_pfn(&se, vgpu->gtt.scratch_pt[type].page_mfn);
   ppgtt_set_shadow_entry(spt, &se, index);
  }
  ppgtt_set_post_shadow(spt, index);
 }

 if (!enable_out_of_sync)
  return 0;

 spt->guest_page.write_cnt++;

 if (spt->guest_page.oos_page)
  ops->set_entry(spt->guest_page.oos_page->mem, &we, index,
    0, 0, vgpu);

 if (can_do_out_of_sync(spt)) {
  if (!spt->guest_page.oos_page)
   ppgtt_allocate_oos_page(spt);

  ret = ppgtt_set_guest_page_oos(spt);
  if (ret < 0)
   return ret;
 }
 return 0;
}
