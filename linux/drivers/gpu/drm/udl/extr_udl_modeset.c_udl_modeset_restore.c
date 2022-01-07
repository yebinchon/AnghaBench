
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; } ;
struct udl_framebuffer {TYPE_1__ base; } ;
struct udl_device {TYPE_3__* crtc; } ;
struct drm_device {struct udl_device* dev_private; } ;
struct TYPE_6__ {TYPE_2__* primary; } ;
struct TYPE_5__ {int fb; } ;


 struct udl_framebuffer* to_udl_fb (int ) ;
 int udl_crtc_commit (TYPE_3__*) ;
 int udl_handle_damage (struct udl_framebuffer*,int ,int ,int ,int ) ;

void udl_modeset_restore(struct drm_device *dev)
{
 struct udl_device *udl = dev->dev_private;
 struct udl_framebuffer *ufb;

 if (!udl->crtc || !udl->crtc->primary->fb)
  return;
 udl_crtc_commit(udl->crtc);
 ufb = to_udl_fb(udl->crtc->primary->fb);
 udl_handle_damage(ufb, 0, 0, ufb->base.width, ufb->base.height);
}
