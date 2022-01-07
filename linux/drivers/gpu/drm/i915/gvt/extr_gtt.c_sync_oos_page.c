
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int gfn; scalar_t__ write_cnt; int type; } ;
struct intel_vgpu_ppgtt_spt {int post_shadow_list; TYPE_2__ guest_page; int post_shadow_bitmap; } ;
struct intel_vgpu_oos_page {int * mem; int id; struct intel_vgpu_ppgtt_spt* spt; } ;
struct intel_vgpu {int id; struct intel_gvt* gvt; } ;
struct intel_gvt_gtt_pte_ops {int (* set_entry ) (int *,struct intel_gvt_gtt_entry*,int,int,int ,struct intel_vgpu*) ;int (* get_entry ) (int *,struct intel_gvt_gtt_entry*,int,int,int,struct intel_vgpu*) ;} ;
struct intel_gvt_gtt_entry {scalar_t__ val64; int type; } ;
struct intel_gvt_device_info {int gtt_entry_size_shift; } ;
struct TYPE_3__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct intel_gvt {TYPE_1__ gtt; struct intel_gvt_device_info device_info; } ;


 int I915_GTT_PAGE_SIZE ;
 int PAGE_SHIFT ;
 int get_entry_type (int ) ;
 int list_del_init (int *) ;
 int ppgtt_populate_shadow_entry (struct intel_vgpu*,struct intel_vgpu_ppgtt_spt*,int,struct intel_gvt_gtt_entry*) ;
 int stub1 (int *,struct intel_gvt_gtt_entry*,int,int,int,struct intel_vgpu*) ;
 int stub2 (int *,struct intel_gvt_gtt_entry*,int,int,int,struct intel_vgpu*) ;
 int stub3 (int *,struct intel_gvt_gtt_entry*,int,int,int ,struct intel_vgpu*) ;
 int test_and_clear_bit (int,int ) ;
 int trace_oos_change (int ,char*,int ,struct intel_vgpu_ppgtt_spt*,int ) ;
 int trace_oos_sync (int ,int ,struct intel_vgpu_ppgtt_spt*,int ,scalar_t__,int) ;

__attribute__((used)) static int sync_oos_page(struct intel_vgpu *vgpu,
  struct intel_vgpu_oos_page *oos_page)
{
 const struct intel_gvt_device_info *info = &vgpu->gvt->device_info;
 struct intel_gvt *gvt = vgpu->gvt;
 struct intel_gvt_gtt_pte_ops *ops = gvt->gtt.pte_ops;
 struct intel_vgpu_ppgtt_spt *spt = oos_page->spt;
 struct intel_gvt_gtt_entry old, new;
 int index;
 int ret;

 trace_oos_change(vgpu->id, "sync", oos_page->id,
    spt, spt->guest_page.type);

 old.type = new.type = get_entry_type(spt->guest_page.type);
 old.val64 = new.val64 = 0;

 for (index = 0; index < (I915_GTT_PAGE_SIZE >>
    info->gtt_entry_size_shift); index++) {
  ops->get_entry(oos_page->mem, &old, index, 0, 0, vgpu);
  ops->get_entry(((void*)0), &new, index, 1,
          spt->guest_page.gfn << PAGE_SHIFT, vgpu);

  if (old.val64 == new.val64
   && !test_and_clear_bit(index, spt->post_shadow_bitmap))
   continue;

  trace_oos_sync(vgpu->id, oos_page->id,
    spt, spt->guest_page.type,
    new.val64, index);

  ret = ppgtt_populate_shadow_entry(vgpu, spt, index, &new);
  if (ret)
   return ret;

  ops->set_entry(oos_page->mem, &new, index, 0, 0, vgpu);
 }

 spt->guest_page.write_cnt = 0;
 list_del_init(&spt->post_shadow_list);
 return 0;
}
