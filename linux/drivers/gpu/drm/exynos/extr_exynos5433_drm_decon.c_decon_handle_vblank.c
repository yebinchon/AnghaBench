
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct decon_context {scalar_t__ frame_id; int vblank_lock; TYPE_1__* crtc; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {int base; } ;


 scalar_t__ decon_get_frame_count (struct decon_context*,int) ;
 int drm_crtc_handle_vblank (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void decon_handle_vblank(struct decon_context *ctx)
{
 u32 frm;

 spin_lock(&ctx->vblank_lock);

 frm = decon_get_frame_count(ctx, 1);

 if (frm != ctx->frame_id) {

  if ((s32)(frm - ctx->frame_id) > 0)
   drm_crtc_handle_vblank(&ctx->crtc->base);
  ctx->frame_id = frm;
 }

 spin_unlock(&ctx->vblank_lock);
}
