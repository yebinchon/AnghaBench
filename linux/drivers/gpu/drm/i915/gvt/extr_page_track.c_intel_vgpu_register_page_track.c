
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_page_track {void* priv_data; int handler; } ;
struct intel_vgpu {int page_track_tree; } ;
typedef int gvt_page_track_handler_t ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct intel_vgpu_page_track* intel_vgpu_find_page_track (struct intel_vgpu*,unsigned long) ;
 int kfree (struct intel_vgpu_page_track*) ;
 struct intel_vgpu_page_track* kzalloc (int,int ) ;
 int radix_tree_insert (int *,unsigned long,struct intel_vgpu_page_track*) ;

int intel_vgpu_register_page_track(struct intel_vgpu *vgpu, unsigned long gfn,
  gvt_page_track_handler_t handler, void *priv)
{
 struct intel_vgpu_page_track *track;
 int ret;

 track = intel_vgpu_find_page_track(vgpu, gfn);
 if (track)
  return -EEXIST;

 track = kzalloc(sizeof(*track), GFP_KERNEL);
 if (!track)
  return -ENOMEM;

 track->handler = handler;
 track->priv_data = priv;

 ret = radix_tree_insert(&vgpu->page_track_tree, gfn, track);
 if (ret) {
  kfree(track);
  return ret;
 }

 return 0;
}
