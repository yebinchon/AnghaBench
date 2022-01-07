
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int qxl_crtc_update_monitors_config (struct drm_crtc*,char*) ;

__attribute__((used)) static void qxl_crtc_atomic_disable(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 qxl_crtc_update_monitors_config(crtc, "disable");
}
