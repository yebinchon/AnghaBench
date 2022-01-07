
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct mixer_context {int dummy; } ;


 unsigned int DRM_BLEND_ALPHA_OPAQUE ;
 int MXR_VIDEO_CFG ;
 unsigned int MXR_VID_CFG_BLEND_EN ;
 int mixer_reg_write (struct mixer_context*,int ,unsigned int) ;

__attribute__((used)) static void mixer_cfg_vp_blend(struct mixer_context *ctx, unsigned int alpha)
{
 u32 win_alpha = alpha >> 8;
 u32 val = 0;

 if (alpha != DRM_BLEND_ALPHA_OPAQUE) {
  val |= MXR_VID_CFG_BLEND_EN;
  val |= win_alpha;
 }
 mixer_reg_write(ctx, MXR_VIDEO_CFG, val);
}
