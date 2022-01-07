
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int reg_slock; int flags; } ;


 int MXR_BG_COLOR0 ;
 int MXR_BG_COLOR1 ;
 int MXR_BG_COLOR2 ;
 int MXR_BIT_VP_ENABLED ;
 int MXR_CFG ;
 int MXR_CFG_DST_HDMI ;
 int MXR_CFG_DST_MASK ;
 int MXR_CFG_GRP0_ENABLE ;
 int MXR_CFG_GRP1_ENABLE ;
 int MXR_CFG_OUT_MASK ;
 int MXR_CFG_OUT_RGB888 ;
 int MXR_CFG_VP_ENABLE ;
 int MXR_GRAPHIC_SXY (int) ;
 int MXR_LAYER_CFG ;
 int MXR_STATUS ;
 int MXR_STATUS_16_BURST ;
 int MXR_STATUS_BURST_MASK ;
 int MXR_YCBCR_VAL (int ,int,int) ;
 int mixer_reg_write (struct mixer_context*,int ,int ) ;
 int mixer_reg_writemask (struct mixer_context*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int vp_default_filter (struct mixer_context*) ;
 int vp_win_reset (struct mixer_context*) ;

__attribute__((used)) static void mixer_win_reset(struct mixer_context *ctx)
{
 unsigned long flags;

 spin_lock_irqsave(&ctx->reg_slock, flags);

 mixer_reg_writemask(ctx, MXR_CFG, MXR_CFG_DST_HDMI, MXR_CFG_DST_MASK);


 mixer_reg_writemask(ctx, MXR_CFG, MXR_CFG_OUT_RGB888, MXR_CFG_OUT_MASK);


 mixer_reg_writemask(ctx, MXR_STATUS, MXR_STATUS_16_BURST,
  MXR_STATUS_BURST_MASK);


 mixer_reg_write(ctx, MXR_LAYER_CFG, 0);


 mixer_reg_write(ctx, MXR_BG_COLOR0, MXR_YCBCR_VAL(0, 128, 128));
 mixer_reg_write(ctx, MXR_BG_COLOR1, MXR_YCBCR_VAL(0, 128, 128));
 mixer_reg_write(ctx, MXR_BG_COLOR2, MXR_YCBCR_VAL(0, 128, 128));

 if (test_bit(MXR_BIT_VP_ENABLED, &ctx->flags)) {

  vp_win_reset(ctx);
  vp_default_filter(ctx);
 }


 mixer_reg_writemask(ctx, MXR_CFG, 0, MXR_CFG_GRP0_ENABLE);
 mixer_reg_writemask(ctx, MXR_CFG, 0, MXR_CFG_GRP1_ENABLE);
 if (test_bit(MXR_BIT_VP_ENABLED, &ctx->flags))
  mixer_reg_writemask(ctx, MXR_CFG, 0, MXR_CFG_VP_ENABLE);


 mixer_reg_write(ctx, MXR_GRAPHIC_SXY(0), 0);
 mixer_reg_write(ctx, MXR_GRAPHIC_SXY(1), 0);

 spin_unlock_irqrestore(&ctx->reg_slock, flags);
}
