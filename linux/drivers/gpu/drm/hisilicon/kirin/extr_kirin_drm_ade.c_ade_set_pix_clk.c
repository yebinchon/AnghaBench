
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_display_mode {int clock; } ;
struct ade_hw_ctx {int ade_pix_clk; } ;


 int DRM_ERROR (char*,int,int) ;
 int clk_get_rate (int ) ;
 int clk_set_rate (int ,int) ;

__attribute__((used)) static void ade_set_pix_clk(struct ade_hw_ctx *ctx,
       struct drm_display_mode *mode,
       struct drm_display_mode *adj_mode)
{
 u32 clk_Hz = mode->clock * 1000;
 int ret;





 ret = clk_set_rate(ctx->ade_pix_clk, clk_Hz);
 if (ret)
  DRM_ERROR("failed to set pixel clk %dHz (%d)\n", clk_Hz, ret);
 adj_mode->clock = clk_get_rate(ctx->ade_pix_clk) / 1000;
}
