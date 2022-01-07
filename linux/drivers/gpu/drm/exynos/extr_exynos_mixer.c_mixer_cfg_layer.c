
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mixer_context {int flags; } ;


 int MXR_BIT_VP_ENABLED ;
 int MXR_CFG ;
 int MXR_CFG_GRP0_ENABLE ;
 int MXR_CFG_GRP1_ENABLE ;
 int MXR_CFG_VP_ENABLE ;
 int MXR_LAYER_CFG ;
 int MXR_LAYER_CFG_GRP0_MASK ;
 int MXR_LAYER_CFG_GRP0_VAL (unsigned int) ;
 int MXR_LAYER_CFG_GRP1_MASK ;
 int MXR_LAYER_CFG_GRP1_VAL (unsigned int) ;
 int MXR_LAYER_CFG_VP_MASK ;
 int MXR_LAYER_CFG_VP_VAL (unsigned int) ;

 int VP_ENABLE ;
 int VP_ENABLE_ON ;
 int mixer_reg_writemask (struct mixer_context*,int ,int ,int ) ;
 int test_bit (int ,int *) ;
 int vp_reg_writemask (struct mixer_context*,int ,int ,int ) ;

__attribute__((used)) static void mixer_cfg_layer(struct mixer_context *ctx, unsigned int win,
       unsigned int priority, bool enable)
{
 u32 val = enable ? ~0 : 0;

 switch (win) {
 case 0:
  mixer_reg_writemask(ctx, MXR_CFG, val, MXR_CFG_GRP0_ENABLE);
  mixer_reg_writemask(ctx, MXR_LAYER_CFG,
        MXR_LAYER_CFG_GRP0_VAL(priority),
        MXR_LAYER_CFG_GRP0_MASK);
  break;
 case 1:
  mixer_reg_writemask(ctx, MXR_CFG, val, MXR_CFG_GRP1_ENABLE);
  mixer_reg_writemask(ctx, MXR_LAYER_CFG,
        MXR_LAYER_CFG_GRP1_VAL(priority),
        MXR_LAYER_CFG_GRP1_MASK);

  break;
 case 128:
  if (test_bit(MXR_BIT_VP_ENABLED, &ctx->flags)) {
   vp_reg_writemask(ctx, VP_ENABLE, val, VP_ENABLE_ON);
   mixer_reg_writemask(ctx, MXR_CFG, val,
    MXR_CFG_VP_ENABLE);
   mixer_reg_writemask(ctx, MXR_LAYER_CFG,
         MXR_LAYER_CFG_VP_VAL(priority),
         MXR_LAYER_CFG_VP_MASK);
  }
  break;
 }
}
