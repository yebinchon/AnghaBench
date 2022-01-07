
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_page_track {scalar_t__ tracked; } ;
struct intel_vgpu {int page_track_tree; } ;


 int intel_gvt_hypervisor_disable_page_track (struct intel_vgpu*,unsigned long) ;
 int kfree (struct intel_vgpu_page_track*) ;
 struct intel_vgpu_page_track* radix_tree_delete (int *,unsigned long) ;

void intel_vgpu_unregister_page_track(struct intel_vgpu *vgpu,
  unsigned long gfn)
{
 struct intel_vgpu_page_track *track;

 track = radix_tree_delete(&vgpu->page_track_tree, gfn);
 if (track) {
  if (track->tracked)
   intel_gvt_hypervisor_disable_page_track(vgpu, gfn);
  kfree(track);
 }
}
