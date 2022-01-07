
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxsfb_drm_private {int panel; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct drm_simple_display_pipe {TYPE_1__ plane; } ;
struct drm_plane_state {int dummy; } ;
struct drm_device {int dev; } ;
struct drm_crtc_state {int dummy; } ;


 int drm_panel_enable (int ) ;
 int drm_panel_prepare (int ) ;
 struct mxsfb_drm_private* drm_pipe_to_mxsfb_drm_private (struct drm_simple_display_pipe*) ;
 int mxsfb_crtc_enable (struct mxsfb_drm_private*) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
         struct drm_crtc_state *crtc_state,
         struct drm_plane_state *plane_state)
{
 struct mxsfb_drm_private *mxsfb = drm_pipe_to_mxsfb_drm_private(pipe);
 struct drm_device *drm = pipe->plane.dev;

 pm_runtime_get_sync(drm->dev);
 drm_panel_prepare(mxsfb->panel);
 mxsfb_crtc_enable(mxsfb);
 drm_panel_enable(mxsfb->panel);
}
