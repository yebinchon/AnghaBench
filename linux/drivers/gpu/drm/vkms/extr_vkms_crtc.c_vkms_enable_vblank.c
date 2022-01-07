
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * function; } ;
struct vkms_output {int period_ns; TYPE_1__ vblank_hrtimer; } ;
struct drm_vblank_crtc {int framedur_ns; } ;
struct drm_device {struct drm_vblank_crtc* vblank; } ;
struct drm_crtc {int mode; struct drm_device* dev; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL ;
 int drm_calc_timestamping_constants (struct drm_crtc*,int *) ;
 unsigned int drm_crtc_index (struct drm_crtc*) ;
 struct vkms_output* drm_crtc_to_vkms_output (struct drm_crtc*) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int hrtimer_start (TYPE_1__*,int ,int ) ;
 int ktime_set (int ,int ) ;
 int vkms_vblank_simulate ;

__attribute__((used)) static int vkms_enable_vblank(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 unsigned int pipe = drm_crtc_index(crtc);
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 struct vkms_output *out = drm_crtc_to_vkms_output(crtc);

 drm_calc_timestamping_constants(crtc, &crtc->mode);

 hrtimer_init(&out->vblank_hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 out->vblank_hrtimer.function = &vkms_vblank_simulate;
 out->period_ns = ktime_set(0, vblank->framedur_ns);
 hrtimer_start(&out->vblank_hrtimer, out->period_ns, HRTIMER_MODE_REL);

 return 0;
}
