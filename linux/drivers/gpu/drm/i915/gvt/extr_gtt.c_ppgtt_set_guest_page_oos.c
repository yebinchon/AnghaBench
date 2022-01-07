
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int gfn; int type; struct intel_vgpu_oos_page* oos_page; } ;
struct intel_vgpu_ppgtt_spt {TYPE_2__ guest_page; TYPE_3__* vgpu; } ;
struct intel_vgpu_oos_page {int vm_list; int id; } ;
struct TYPE_4__ {int oos_page_list_head; } ;
struct TYPE_6__ {TYPE_1__ gtt; int id; } ;


 int EINVAL ;
 scalar_t__ WARN (int,char*) ;
 int intel_vgpu_disable_page_track (TYPE_3__*,int ) ;
 int list_add_tail (int *,int *) ;
 int trace_oos_change (int ,char*,int ,struct intel_vgpu_ppgtt_spt*,int ) ;

__attribute__((used)) static int ppgtt_set_guest_page_oos(struct intel_vgpu_ppgtt_spt *spt)
{
 struct intel_vgpu_oos_page *oos_page = spt->guest_page.oos_page;

 if (WARN(!oos_page, "shadow PPGTT page should have a oos page\n"))
  return -EINVAL;

 trace_oos_change(spt->vgpu->id, "set page out of sync", oos_page->id,
    spt, spt->guest_page.type);

 list_add_tail(&oos_page->vm_list, &spt->vgpu->gtt.oos_page_list_head);
 return intel_vgpu_disable_page_track(spt->vgpu, spt->guest_page.gfn);
}
