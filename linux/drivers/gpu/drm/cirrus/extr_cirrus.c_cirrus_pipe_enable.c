
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev; } ;
struct drm_simple_display_pipe {TYPE_2__ crtc; } ;
struct drm_plane_state {int fb; } ;
struct drm_crtc_state {int mode; } ;
struct cirrus_device {int dummy; } ;
struct TYPE_3__ {struct cirrus_device* dev_private; } ;


 int cirrus_fb_blit_fullscreen (int ) ;
 int cirrus_mode_set (struct cirrus_device*,int *,int ) ;

__attribute__((used)) static void cirrus_pipe_enable(struct drm_simple_display_pipe *pipe,
          struct drm_crtc_state *crtc_state,
          struct drm_plane_state *plane_state)
{
 struct cirrus_device *cirrus = pipe->crtc.dev->dev_private;

 cirrus_mode_set(cirrus, &crtc_state->mode, plane_state->fb);
 cirrus_fb_blit_fullscreen(plane_state->fb);
}
