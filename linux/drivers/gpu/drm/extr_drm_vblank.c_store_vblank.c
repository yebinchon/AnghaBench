
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_vblank_crtc {int seqlock; int count; int time; scalar_t__ last; } ;
struct drm_device {int vblank_time_lock; struct drm_vblank_crtc* vblank; } ;
typedef int ktime_t ;


 int assert_spin_locked (int *) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void store_vblank(struct drm_device *dev, unsigned int pipe,
    u32 vblank_count_inc,
    ktime_t t_vblank, u32 last)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];

 assert_spin_locked(&dev->vblank_time_lock);

 vblank->last = last;

 write_seqlock(&vblank->seqlock);
 vblank->time = t_vblank;
 vblank->count += vblank_count_inc;
 write_sequnlock(&vblank->seqlock);
}
