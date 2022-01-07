
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_screen_target_display_unit {int content_fb_type; scalar_t__ defined; } ;
struct vmw_private {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dev; } ;


 int DRM_ERROR (char*) ;
 int SAME_AS_DISPLAY ;
 struct vmw_screen_target_display_unit* vmw_crtc_to_stdu (struct drm_crtc*) ;
 struct vmw_private* vmw_priv (int ) ;
 int vmw_stdu_bind_st (struct vmw_private*,struct vmw_screen_target_display_unit*,int *) ;
 int vmw_stdu_destroy_st (struct vmw_private*,struct vmw_screen_target_display_unit*) ;
 int vmw_stdu_update_st (struct vmw_private*,struct vmw_screen_target_display_unit*) ;

__attribute__((used)) static void vmw_stdu_crtc_atomic_disable(struct drm_crtc *crtc,
      struct drm_crtc_state *old_state)
{
 struct vmw_private *dev_priv;
 struct vmw_screen_target_display_unit *stdu;
 int ret;


 if (!crtc) {
  DRM_ERROR("CRTC is NULL\n");
  return;
 }

 stdu = vmw_crtc_to_stdu(crtc);
 dev_priv = vmw_priv(crtc->dev);

 if (stdu->defined) {
  ret = vmw_stdu_bind_st(dev_priv, stdu, ((void*)0));
  if (ret)
   DRM_ERROR("Failed to blank CRTC\n");

  (void) vmw_stdu_update_st(dev_priv, stdu);

  ret = vmw_stdu_destroy_st(dev_priv, stdu);
  if (ret)
   DRM_ERROR("Failed to destroy Screen Target\n");

  stdu->content_fb_type = SAME_AS_DISPLAY;
 }
}
