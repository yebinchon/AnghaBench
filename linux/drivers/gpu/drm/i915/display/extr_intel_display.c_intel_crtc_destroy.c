
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct intel_crtc*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void intel_crtc_destroy(struct drm_crtc *crtc)
{
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);

 drm_crtc_cleanup(crtc);
 kfree(intel_crtc);
}
