
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
struct drm_display_mode {scalar_t__ crtc_clock; int crtc_htotal; } ;
struct drm_vblank_crtc {struct drm_display_mode hwmode; } ;
struct drm_device {unsigned int num_crtcs; TYPE_1__* driver; struct drm_vblank_crtc* vblank; } ;
struct drm_crtc {struct drm_display_mode hwmode; } ;
typedef int ktime_t ;
struct TYPE_2__ {int (* get_scanout_position ) (struct drm_device*,unsigned int,int,int*,int*,int *,int *,struct drm_display_mode const*) ;} ;


 int DRIVER_MODESET ;
 int DRM_DEBUG (char*,unsigned int,...) ;
 int DRM_DEBUG_VBL (char*,unsigned int,int,int,int ,int,int ,int,int,int) ;
 int DRM_ERROR (char*,...) ;
 int DRM_TIMESTAMP_MAXRETRIES ;
 int DRM_UT_VBL ;
 int WARN_ON_ONCE (scalar_t__) ;
 int div_s64 (long long,scalar_t__) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 struct drm_crtc* drm_crtc_from_index (struct drm_device*,unsigned int) ;
 int drm_debug ;
 scalar_t__ drm_drv_uses_atomic_modeset (struct drm_device*) ;
 int ktime_sub_ns (int ,int) ;
 int ktime_to_ns (int ) ;
 struct timespec64 ktime_to_timespec64 (int ) ;
 int stub1 (struct drm_device*,unsigned int,int,int*,int*,int *,int *,struct drm_display_mode const*) ;

bool drm_calc_vbltimestamp_from_scanoutpos(struct drm_device *dev,
        unsigned int pipe,
        int *max_error,
        ktime_t *vblank_time,
        bool in_vblank_irq)
{
 struct timespec64 ts_etime, ts_vblank_time;
 ktime_t stime, etime;
 bool vbl_status;
 struct drm_crtc *crtc;
 const struct drm_display_mode *mode;
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 int vpos, hpos, i;
 int delta_ns, duration_ns;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return 0;

 crtc = drm_crtc_from_index(dev, pipe);

 if (pipe >= dev->num_crtcs || !crtc) {
  DRM_ERROR("Invalid crtc %u\n", pipe);
  return 0;
 }


 if (!dev->driver->get_scanout_position) {
  DRM_ERROR("Called from driver w/o get_scanout_position()!?\n");
  return 0;
 }

 if (drm_drv_uses_atomic_modeset(dev))
  mode = &vblank->hwmode;
 else
  mode = &crtc->hwmode;




 if (mode->crtc_clock == 0) {
  DRM_DEBUG("crtc %u: Noop due to uninitialized mode.\n", pipe);
  WARN_ON_ONCE(drm_drv_uses_atomic_modeset(dev));

  return 0;
 }
 for (i = 0; i < DRM_TIMESTAMP_MAXRETRIES; i++) {




  vbl_status = dev->driver->get_scanout_position(dev, pipe,
              in_vblank_irq,
              &vpos, &hpos,
              &stime, &etime,
              mode);


  if (!vbl_status) {
   DRM_DEBUG("crtc %u : scanoutpos query failed.\n",
      pipe);
   return 0;
  }


  duration_ns = ktime_to_ns(etime) - ktime_to_ns(stime);


  if (duration_ns <= *max_error)
   break;
 }


 if (i == DRM_TIMESTAMP_MAXRETRIES) {
  DRM_DEBUG("crtc %u: Noisy timestamp %d us > %d us [%d reps].\n",
     pipe, duration_ns/1000, *max_error/1000, i);
 }


 *max_error = duration_ns;





 delta_ns = div_s64(1000000LL * (vpos * mode->crtc_htotal + hpos),
      mode->crtc_clock);




 *vblank_time = ktime_sub_ns(etime, delta_ns);

 if ((drm_debug & DRM_UT_VBL) == 0)
  return 1;

 ts_etime = ktime_to_timespec64(etime);
 ts_vblank_time = ktime_to_timespec64(*vblank_time);

 DRM_DEBUG_VBL("crtc %u : v p(%d,%d)@ %lld.%06ld -> %lld.%06ld [e %d us, %d rep]\n",
        pipe, hpos, vpos,
        (u64)ts_etime.tv_sec, ts_etime.tv_nsec / 1000,
        (u64)ts_vblank_time.tv_sec, ts_vblank_time.tv_nsec / 1000,
        duration_ns / 1000, i);

 return 1;
}
