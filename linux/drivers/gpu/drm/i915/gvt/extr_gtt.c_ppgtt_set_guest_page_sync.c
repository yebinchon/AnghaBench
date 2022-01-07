
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int gfn; struct intel_vgpu_oos_page* oos_page; } ;
struct intel_vgpu_ppgtt_spt {TYPE_2__* vgpu; TYPE_1__ guest_page; } ;
struct intel_vgpu_oos_page {int vm_list; int id; } ;
struct TYPE_5__ {int id; } ;


 int intel_vgpu_enable_page_track (TYPE_2__*,int ) ;
 int list_del_init (int *) ;
 int sync_oos_page (TYPE_2__*,struct intel_vgpu_oos_page*) ;
 int trace_oos_change (int ,char*,int ,struct intel_vgpu_ppgtt_spt*,int ) ;

__attribute__((used)) static int ppgtt_set_guest_page_sync(struct intel_vgpu_ppgtt_spt *spt)
{
 struct intel_vgpu_oos_page *oos_page = spt->guest_page.oos_page;
 int ret;

 ret = intel_vgpu_enable_page_track(spt->vgpu, spt->guest_page.gfn);
 if (ret)
  return ret;

 trace_oos_change(spt->vgpu->id, "set page sync", oos_page->id,
    spt, spt->guest_page.type);

 list_del_init(&oos_page->vm_list);
 return sync_oos_page(spt->vgpu, oos_page);
}
