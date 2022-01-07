
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_simple_display_pipe {int encoder; } ;
struct drm_bridge {int dummy; } ;


 int drm_bridge_attach (int *,struct drm_bridge*,int *) ;

int drm_simple_display_pipe_attach_bridge(struct drm_simple_display_pipe *pipe,
       struct drm_bridge *bridge)
{
 return drm_bridge_attach(&pipe->encoder, bridge, ((void*)0));
}
