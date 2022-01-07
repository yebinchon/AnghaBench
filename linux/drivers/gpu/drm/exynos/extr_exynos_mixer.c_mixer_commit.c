
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mixer_context {TYPE_3__* crtc; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; } ;


 int mixer_cfg_rgb_fmt (struct mixer_context*,struct drm_display_mode*) ;
 int mixer_cfg_scan (struct mixer_context*,int ,int ) ;
 int mixer_run (struct mixer_context*) ;

__attribute__((used)) static void mixer_commit(struct mixer_context *ctx)
{
 struct drm_display_mode *mode = &ctx->crtc->base.state->adjusted_mode;

 mixer_cfg_scan(ctx, mode->hdisplay, mode->vdisplay);
 mixer_cfg_rgb_fmt(ctx, mode);
 mixer_run(ctx);
}
