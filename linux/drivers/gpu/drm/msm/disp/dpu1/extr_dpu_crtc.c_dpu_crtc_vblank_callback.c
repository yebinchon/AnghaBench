
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct dpu_crtc {int vblank_cb_count; int vblank_cb_time; } ;


 int DRMID (struct drm_crtc*) ;
 int _dpu_crtc_complete_flip (struct drm_crtc*) ;
 int drm_crtc_handle_vblank (struct drm_crtc*) ;
 scalar_t__ ktime_compare (int ,int ) ;
 int ktime_get () ;
 int ktime_set (int ,int ) ;
 struct dpu_crtc* to_dpu_crtc (struct drm_crtc*) ;
 int trace_dpu_crtc_vblank_cb (int ) ;

void dpu_crtc_vblank_callback(struct drm_crtc *crtc)
{
 struct dpu_crtc *dpu_crtc = to_dpu_crtc(crtc);


 if (ktime_compare(dpu_crtc->vblank_cb_time, ktime_set(0, 0)) == 0)
  dpu_crtc->vblank_cb_time = ktime_get();
 else
  dpu_crtc->vblank_cb_count++;
 _dpu_crtc_complete_flip(crtc);
 drm_crtc_handle_vblank(crtc);
 trace_dpu_crtc_vblank_cb(DRMID(crtc));
}
