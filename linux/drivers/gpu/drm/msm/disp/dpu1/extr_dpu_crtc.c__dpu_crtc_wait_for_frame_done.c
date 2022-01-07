
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct dpu_crtc {int frame_done_comp; int frame_pending; } ;


 int DPU_ATRACE_BEGIN (char*) ;
 int DPU_ATRACE_END (char*) ;
 int DPU_CRTC_FRAME_DONE_TIMEOUT_MS ;
 int DPU_DEBUG (char*) ;
 int DRM_ERROR (char*,int) ;
 int ETIMEDOUT ;
 int atomic_read (int *) ;
 int msecs_to_jiffies (int ) ;
 struct dpu_crtc* to_dpu_crtc (struct drm_crtc*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int _dpu_crtc_wait_for_frame_done(struct drm_crtc *crtc)
{
 struct dpu_crtc *dpu_crtc = to_dpu_crtc(crtc);
 int ret, rc = 0;

 if (!atomic_read(&dpu_crtc->frame_pending)) {
  DPU_DEBUG("no frames pending\n");
  return 0;
 }

 DPU_ATRACE_BEGIN("frame done completion wait");
 ret = wait_for_completion_timeout(&dpu_crtc->frame_done_comp,
   msecs_to_jiffies(DPU_CRTC_FRAME_DONE_TIMEOUT_MS));
 if (!ret) {
  DRM_ERROR("frame done wait timed out, ret:%d\n", ret);
  rc = -ETIMEDOUT;
 }
 DPU_ATRACE_END("frame done completion wait");

 return rc;
}
