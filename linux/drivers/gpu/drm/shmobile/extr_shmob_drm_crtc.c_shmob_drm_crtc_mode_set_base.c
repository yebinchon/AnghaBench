
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int shmob_drm_crtc_update_base (int ) ;
 int to_shmob_crtc (struct drm_crtc*) ;

__attribute__((used)) static int shmob_drm_crtc_mode_set_base(struct drm_crtc *crtc, int x, int y,
     struct drm_framebuffer *old_fb)
{
 shmob_drm_crtc_update_base(to_shmob_crtc(crtc));

 return 0;
}
