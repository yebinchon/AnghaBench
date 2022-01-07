
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mixer_context {scalar_t__ mxr_ver; int flags; } ;


 int MXR_BIT_VP_ENABLED ;
 int MXR_CFG ;
 int MXR_CFG_LAYER_UPDATE_COUNT_MASK ;
 int MXR_CFG_S ;
 int MXR_GRAPHIC_BASE (int) ;
 int MXR_GRAPHIC_BASE_S (int) ;
 scalar_t__ MXR_VER_128_0_0_184 ;
 scalar_t__ MXR_VER_16_0_33_0 ;
 int VP_SHADOW_UPDATE ;
 int mixer_reg_read (struct mixer_context*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ vp_reg_read (struct mixer_context*,int ) ;

__attribute__((used)) static bool mixer_is_synced(struct mixer_context *ctx)
{
 u32 base, shadow;

 if (ctx->mxr_ver == MXR_VER_16_0_33_0 ||
     ctx->mxr_ver == MXR_VER_128_0_0_184)
  return !(mixer_reg_read(ctx, MXR_CFG) &
    MXR_CFG_LAYER_UPDATE_COUNT_MASK);

 if (test_bit(MXR_BIT_VP_ENABLED, &ctx->flags) &&
     vp_reg_read(ctx, VP_SHADOW_UPDATE))
  return 0;

 base = mixer_reg_read(ctx, MXR_CFG);
 shadow = mixer_reg_read(ctx, MXR_CFG_S);
 if (base != shadow)
  return 0;

 base = mixer_reg_read(ctx, MXR_GRAPHIC_BASE(0));
 shadow = mixer_reg_read(ctx, MXR_GRAPHIC_BASE_S(0));
 if (base != shadow)
  return 0;

 base = mixer_reg_read(ctx, MXR_GRAPHIC_BASE(1));
 shadow = mixer_reg_read(ctx, MXR_GRAPHIC_BASE_S(1));
 if (base != shadow)
  return 0;

 return 1;
}
