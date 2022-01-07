
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int DRMID (struct drm_crtc*) ;
 int trace_dpu_crtc_complete_commit (int ) ;

void dpu_crtc_complete_commit(struct drm_crtc *crtc)
{
 trace_dpu_crtc_complete_commit(DRMID(crtc));
}
