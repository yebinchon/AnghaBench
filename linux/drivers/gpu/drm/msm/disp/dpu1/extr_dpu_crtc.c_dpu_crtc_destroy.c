
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct dpu_crtc {int dummy; } ;


 int DPU_DEBUG (char*) ;
 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct dpu_crtc*) ;
 struct dpu_crtc* to_dpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dpu_crtc_destroy(struct drm_crtc *crtc)
{
 struct dpu_crtc *dpu_crtc = to_dpu_crtc(crtc);

 DPU_DEBUG("\n");

 if (!crtc)
  return;

 drm_crtc_cleanup(crtc);
 kfree(dpu_crtc);
}
