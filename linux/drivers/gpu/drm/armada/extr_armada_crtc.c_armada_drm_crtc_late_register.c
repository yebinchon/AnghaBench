
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int CONFIG_DEBUG_FS ;
 scalar_t__ IS_ENABLED (int ) ;
 int armada_drm_crtc_debugfs_init (int ) ;
 int drm_to_armada_crtc (struct drm_crtc*) ;

__attribute__((used)) static int armada_drm_crtc_late_register(struct drm_crtc *crtc)
{
 if (IS_ENABLED(CONFIG_DEBUG_FS))
  armada_drm_crtc_debugfs_init(drm_to_armada_crtc(crtc));

 return 0;
}
