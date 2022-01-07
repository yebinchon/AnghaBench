
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct dpu_crtc {int debugfs_root; } ;


 int debugfs_remove_recursive (int ) ;
 struct dpu_crtc* to_dpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dpu_crtc_early_unregister(struct drm_crtc *crtc)
{
 struct dpu_crtc *dpu_crtc = to_dpu_crtc(crtc);

 debugfs_remove_recursive(dpu_crtc->debugfs_root);
}
