
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_vgpu_page_track {int (* handler ) (struct intel_vgpu_page_track*,int,void*,unsigned int) ;} ;
struct intel_vgpu {int vgpu_lock; int failsafe; } ;


 int ENXIO ;
 int PAGE_SHIFT ;
 int gvt_err (char*,int) ;
 int intel_vgpu_disable_page_track (struct intel_vgpu*,int) ;
 struct intel_vgpu_page_track* intel_vgpu_find_page_track (struct intel_vgpu*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct intel_vgpu_page_track*,int,void*,unsigned int) ;
 scalar_t__ unlikely (int ) ;

int intel_vgpu_page_track_handler(struct intel_vgpu *vgpu, u64 gpa,
  void *data, unsigned int bytes)
{
 struct intel_vgpu_page_track *page_track;
 int ret = 0;

 mutex_lock(&vgpu->vgpu_lock);

 page_track = intel_vgpu_find_page_track(vgpu, gpa >> PAGE_SHIFT);
 if (!page_track) {
  ret = -ENXIO;
  goto out;
 }

 if (unlikely(vgpu->failsafe)) {

  intel_vgpu_disable_page_track(vgpu, gpa >> PAGE_SHIFT);
 } else {
  ret = page_track->handler(page_track, gpa, data, bytes);
  if (ret)
   gvt_err("guest page write error, gpa %llx\n", gpa);
 }

out:
 mutex_unlock(&vgpu->vgpu_lock);
 return ret;
}
