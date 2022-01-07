
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vidi_context {int timer; scalar_t__ suspended; } ;
struct exynos_drm_crtc {struct vidi_context* ctx; } ;


 int EPERM ;
 int VIDI_REFRESH_TIME ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static int vidi_enable_vblank(struct exynos_drm_crtc *crtc)
{
 struct vidi_context *ctx = crtc->ctx;

 if (ctx->suspended)
  return -EPERM;

 mod_timer(&ctx->timer,
  jiffies + msecs_to_jiffies(VIDI_REFRESH_TIME) - 1);

 return 0;
}
