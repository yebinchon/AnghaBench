
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int _dpu_crtc_init_debugfs (struct drm_crtc*) ;

__attribute__((used)) static int dpu_crtc_late_register(struct drm_crtc *crtc)
{
 return _dpu_crtc_init_debugfs(crtc);
}
