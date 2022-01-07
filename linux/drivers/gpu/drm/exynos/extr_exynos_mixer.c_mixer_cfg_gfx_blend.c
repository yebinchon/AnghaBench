
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct mixer_context {int dummy; } ;


 unsigned int DRM_BLEND_ALPHA_OPAQUE ;



 int MXR_GRAPHIC_CFG (unsigned int) ;
 unsigned int MXR_GRP_CFG_BLEND_PRE_MUL ;
 unsigned int MXR_GRP_CFG_COLOR_KEY_DISABLE ;
 int MXR_GRP_CFG_MISC_MASK ;
 unsigned int MXR_GRP_CFG_PIXEL_BLEND_EN ;
 unsigned int MXR_GRP_CFG_WIN_BLEND_EN ;
 int mixer_reg_writemask (struct mixer_context*,int ,unsigned int,int ) ;

__attribute__((used)) static void mixer_cfg_gfx_blend(struct mixer_context *ctx, unsigned int win,
    unsigned int pixel_alpha, unsigned int alpha)
{
 u32 win_alpha = alpha >> 8;
 u32 val;

 val = MXR_GRP_CFG_COLOR_KEY_DISABLE;
 switch (pixel_alpha) {
 case 129:
  break;
 case 130:
  val |= MXR_GRP_CFG_PIXEL_BLEND_EN;
  break;
 case 128:
 default:
  val |= MXR_GRP_CFG_BLEND_PRE_MUL;
  val |= MXR_GRP_CFG_PIXEL_BLEND_EN;
  break;
 }

 if (alpha != DRM_BLEND_ALPHA_OPAQUE) {
  val |= MXR_GRP_CFG_WIN_BLEND_EN;
  val |= win_alpha;
 }
 mixer_reg_writemask(ctx, MXR_GRAPHIC_CFG(win),
       val, MXR_GRP_CFG_MISC_MASK);
}
