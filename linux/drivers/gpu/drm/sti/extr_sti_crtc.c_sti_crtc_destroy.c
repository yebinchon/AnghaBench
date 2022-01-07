
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int drm_crtc_cleanup (struct drm_crtc*) ;

__attribute__((used)) static void sti_crtc_destroy(struct drm_crtc *crtc)
{
 DRM_DEBUG_KMS("\n");
 drm_crtc_cleanup(crtc);
}
