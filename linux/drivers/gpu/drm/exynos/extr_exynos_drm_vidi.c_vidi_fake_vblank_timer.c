
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vidi_context {int timer; TYPE_1__* crtc; } ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {int base; } ;


 int VIDI_REFRESH_TIME ;
 struct vidi_context* ctx ;
 scalar_t__ drm_crtc_handle_vblank (int *) ;
 struct vidi_context* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int timer ;

__attribute__((used)) static void vidi_fake_vblank_timer(struct timer_list *t)
{
 struct vidi_context *ctx = from_timer(ctx, t, timer);

 if (drm_crtc_handle_vblank(&ctx->crtc->base))
  mod_timer(&ctx->timer,
   jiffies + msecs_to_jiffies(VIDI_REFRESH_TIME) - 1);
}
