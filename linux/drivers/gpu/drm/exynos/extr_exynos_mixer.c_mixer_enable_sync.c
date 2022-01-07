
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {scalar_t__ mxr_ver; int flags; } ;


 int MXR_BIT_VP_ENABLED ;
 int MXR_CFG ;
 int MXR_CFG_LAYER_UPDATE ;
 int MXR_STATUS ;
 int MXR_STATUS_SYNC_ENABLE ;
 scalar_t__ MXR_VER_128_0_0_184 ;
 scalar_t__ MXR_VER_16_0_33_0 ;
 int VP_SHADOW_UPDATE ;
 int VP_SHADOW_UPDATE_ENABLE ;
 int mixer_reg_writemask (struct mixer_context*,int ,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int vp_reg_write (struct mixer_context*,int ,int ) ;

__attribute__((used)) static void mixer_enable_sync(struct mixer_context *ctx)
{
 if (ctx->mxr_ver == MXR_VER_16_0_33_0 ||
     ctx->mxr_ver == MXR_VER_128_0_0_184)
  mixer_reg_writemask(ctx, MXR_CFG, ~0, MXR_CFG_LAYER_UPDATE);
 mixer_reg_writemask(ctx, MXR_STATUS, ~0, MXR_STATUS_SYNC_ENABLE);
 if (test_bit(MXR_BIT_VP_ENABLED, &ctx->flags))
  vp_reg_write(ctx, VP_SHADOW_UPDATE, VP_SHADOW_UPDATE_ENABLE);
}
