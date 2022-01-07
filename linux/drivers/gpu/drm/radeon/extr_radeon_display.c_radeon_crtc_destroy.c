
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_crtc {int flip_queue; } ;
struct drm_crtc {int dummy; } ;


 int destroy_workqueue (int ) ;
 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct radeon_crtc*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void radeon_crtc_destroy(struct drm_crtc *crtc)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);

 drm_crtc_cleanup(crtc);
 destroy_workqueue(radeon_crtc->flip_queue);
 kfree(radeon_crtc);
}
