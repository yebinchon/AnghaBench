
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev; } ;
struct drm_simple_display_pipe {TYPE_2__ crtc; } ;
struct drm_plane_state {int dummy; } ;
struct drm_crtc_state {int mode; } ;
struct bochs_device {int dummy; } ;
struct TYPE_3__ {struct bochs_device* dev_private; } ;


 int bochs_hw_setmode (struct bochs_device*,int *) ;
 int bochs_plane_update (struct bochs_device*,struct drm_plane_state*) ;

__attribute__((used)) static void bochs_pipe_enable(struct drm_simple_display_pipe *pipe,
         struct drm_crtc_state *crtc_state,
         struct drm_plane_state *plane_state)
{
 struct bochs_device *bochs = pipe->crtc.dev->dev_private;

 bochs_hw_setmode(bochs, &crtc_state->mode);
 bochs_plane_update(bochs, plane_state);
}
