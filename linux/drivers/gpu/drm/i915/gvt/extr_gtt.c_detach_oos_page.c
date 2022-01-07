
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * oos_page; scalar_t__ write_cnt; int type; } ;
struct intel_vgpu_ppgtt_spt {TYPE_1__ guest_page; } ;
struct intel_vgpu_oos_page {int list; int vm_list; struct intel_vgpu_ppgtt_spt* spt; int id; } ;
struct intel_vgpu {int id; struct intel_gvt* gvt; } ;
struct TYPE_4__ {int oos_page_free_list_head; } ;
struct intel_gvt {TYPE_2__ gtt; } ;


 int list_del_init (int *) ;
 int list_move_tail (int *,int *) ;
 int trace_oos_change (int ,char*,int ,struct intel_vgpu_ppgtt_spt*,int ) ;

__attribute__((used)) static int detach_oos_page(struct intel_vgpu *vgpu,
  struct intel_vgpu_oos_page *oos_page)
{
 struct intel_gvt *gvt = vgpu->gvt;
 struct intel_vgpu_ppgtt_spt *spt = oos_page->spt;

 trace_oos_change(vgpu->id, "detach", oos_page->id,
    spt, spt->guest_page.type);

 spt->guest_page.write_cnt = 0;
 spt->guest_page.oos_page = ((void*)0);
 oos_page->spt = ((void*)0);

 list_del_init(&oos_page->vm_list);
 list_move_tail(&oos_page->list, &gvt->gtt.oos_page_free_list_head);

 return 0;
}
