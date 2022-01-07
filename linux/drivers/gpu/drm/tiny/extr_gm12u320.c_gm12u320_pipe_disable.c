
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gm12u320_device {int pipe_enabled; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct drm_simple_display_pipe {TYPE_2__ crtc; } ;
struct TYPE_3__ {struct gm12u320_device* dev_private; } ;


 int gm12u320_stop_fb_update (struct gm12u320_device*) ;

__attribute__((used)) static void gm12u320_pipe_disable(struct drm_simple_display_pipe *pipe)
{
 struct gm12u320_device *gm12u320 = pipe->crtc.dev->dev_private;

 gm12u320_stop_fb_update(gm12u320);
 gm12u320->pipe_enabled = 0;
}
