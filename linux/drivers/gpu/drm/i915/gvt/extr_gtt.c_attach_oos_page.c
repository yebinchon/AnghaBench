
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int gfn; int type; struct intel_vgpu_oos_page* oos_page; } ;
struct intel_vgpu_ppgtt_spt {TYPE_2__ guest_page; TYPE_3__* vgpu; } ;
struct intel_vgpu_oos_page {int id; int list; struct intel_vgpu_ppgtt_spt* spt; int mem; } ;
struct TYPE_4__ {int oos_page_use_list_head; } ;
struct intel_gvt {TYPE_1__ gtt; } ;
struct TYPE_6__ {int id; struct intel_gvt* gvt; } ;


 int I915_GTT_PAGE_SHIFT ;
 int I915_GTT_PAGE_SIZE ;
 int intel_gvt_hypervisor_read_gpa (TYPE_3__*,int,int ,int ) ;
 int list_move_tail (int *,int *) ;
 int trace_oos_change (int ,char*,int ,struct intel_vgpu_ppgtt_spt*,int ) ;

__attribute__((used)) static int attach_oos_page(struct intel_vgpu_oos_page *oos_page,
  struct intel_vgpu_ppgtt_spt *spt)
{
 struct intel_gvt *gvt = spt->vgpu->gvt;
 int ret;

 ret = intel_gvt_hypervisor_read_gpa(spt->vgpu,
   spt->guest_page.gfn << I915_GTT_PAGE_SHIFT,
   oos_page->mem, I915_GTT_PAGE_SIZE);
 if (ret)
  return ret;

 oos_page->spt = spt;
 spt->guest_page.oos_page = oos_page;

 list_move_tail(&oos_page->list, &gvt->gtt.oos_page_use_list_head);

 trace_oos_change(spt->vgpu->id, "attach", oos_page->id,
    spt, spt->guest_page.type);
 return 0;
}
