
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct drm_vblank_crtc {int framedur_ns; scalar_t__ last; int time; } ;
struct drm_device {unsigned int num_crtcs; struct drm_vblank_crtc* vblank; int vblank_time_lock; int vbl_lock; } ;
typedef int ktime_t ;


 scalar_t__ DIV_ROUND_CLOSEST_ULL (int ,int) ;
 int DRM_DEBUG_VBL (char*,scalar_t__,int ,int,scalar_t__) ;
 int DRM_TIMESTAMP_MAXRETRIES ;
 int DRM_UT_VBL ;
 scalar_t__ WARN_ON (int) ;
 int WARN_ONCE (int,char*) ;
 scalar_t__ __get_vblank_counter (struct drm_device*,unsigned int) ;
 int assert_spin_locked (int *) ;
 int drm_debug ;
 int drm_get_last_vbltimestamp (struct drm_device*,unsigned int,int *,int) ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 int store_vblank (struct drm_device*,unsigned int,scalar_t__,int ,scalar_t__) ;

void drm_vblank_restore(struct drm_device *dev, unsigned int pipe)
{
 ktime_t t_vblank;
 struct drm_vblank_crtc *vblank;
 int framedur_ns;
 u64 diff_ns;
 u32 cur_vblank, diff = 1;
 int count = DRM_TIMESTAMP_MAXRETRIES;

 if (WARN_ON(pipe >= dev->num_crtcs))
  return;

 assert_spin_locked(&dev->vbl_lock);
 assert_spin_locked(&dev->vblank_time_lock);

 vblank = &dev->vblank[pipe];
 WARN_ONCE((drm_debug & DRM_UT_VBL) && !vblank->framedur_ns,
    "Cannot compute missed vblanks without frame duration\n");
 framedur_ns = vblank->framedur_ns;

 do {
  cur_vblank = __get_vblank_counter(dev, pipe);
  drm_get_last_vbltimestamp(dev, pipe, &t_vblank, 0);
 } while (cur_vblank != __get_vblank_counter(dev, pipe) && --count > 0);

 diff_ns = ktime_to_ns(ktime_sub(t_vblank, vblank->time));
 if (framedur_ns)
  diff = DIV_ROUND_CLOSEST_ULL(diff_ns, framedur_ns);


 DRM_DEBUG_VBL("missed %d vblanks in %lld ns, frame duration=%d ns, hw_diff=%d\n",
        diff, diff_ns, framedur_ns, cur_vblank - vblank->last);
 store_vblank(dev, pipe, diff, t_vblank, cur_vblank);
}
