
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gm12u320_device {int pipe_enabled; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct drm_simple_display_pipe {TYPE_2__ crtc; } ;
struct drm_rect {int member_3; int member_2; int member_1; int member_0; } ;
struct drm_plane_state {int fb; } ;
struct drm_crtc_state {int dummy; } ;
struct TYPE_3__ {struct gm12u320_device* dev_private; } ;


 int GM12U320_HEIGHT ;
 int GM12U320_USER_WIDTH ;
 int gm12u320_fb_mark_dirty (int ,struct drm_rect*) ;
 int gm12u320_start_fb_update (struct gm12u320_device*) ;

__attribute__((used)) static void gm12u320_pipe_enable(struct drm_simple_display_pipe *pipe,
     struct drm_crtc_state *crtc_state,
     struct drm_plane_state *plane_state)
{
 struct gm12u320_device *gm12u320 = pipe->crtc.dev->dev_private;
 struct drm_rect rect = { 0, 0, GM12U320_USER_WIDTH, GM12U320_HEIGHT };

 gm12u320_fb_mark_dirty(plane_state->fb, &rect);
 gm12u320_start_fb_update(gm12u320);
 gm12u320->pipe_enabled = 1;
}
