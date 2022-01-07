
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_page_track {int dummy; } ;
struct intel_vgpu {int page_track_tree; } ;


 struct intel_vgpu_page_track* radix_tree_lookup (int *,unsigned long) ;

struct intel_vgpu_page_track *intel_vgpu_find_page_track(
  struct intel_vgpu *vgpu, unsigned long gfn)
{
 return radix_tree_lookup(&vgpu->page_track_tree, gfn);
}
