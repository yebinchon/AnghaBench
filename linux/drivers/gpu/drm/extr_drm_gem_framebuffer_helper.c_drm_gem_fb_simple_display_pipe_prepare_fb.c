
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_simple_display_pipe {int plane; } ;
struct drm_plane_state {int dummy; } ;


 int drm_gem_fb_prepare_fb (int *,struct drm_plane_state*) ;

int drm_gem_fb_simple_display_pipe_prepare_fb(struct drm_simple_display_pipe *pipe,
           struct drm_plane_state *plane_state)
{
 return drm_gem_fb_prepare_fb(&pipe->plane, plane_state);
}
