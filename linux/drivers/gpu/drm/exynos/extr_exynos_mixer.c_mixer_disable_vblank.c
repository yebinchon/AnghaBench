
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mixer_context {int flags; } ;
struct exynos_drm_crtc {struct mixer_context* ctx; } ;


 int MXR_BIT_POWERED ;
 int MXR_BIT_VSYNC ;
 int MXR_INT_CLEAR_VSYNC ;
 int MXR_INT_EN ;
 int MXR_INT_EN_VSYNC ;
 int MXR_INT_STATUS ;
 int __clear_bit (int ,int *) ;
 int mixer_reg_writemask (struct mixer_context*,int ,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void mixer_disable_vblank(struct exynos_drm_crtc *crtc)
{
 struct mixer_context *mixer_ctx = crtc->ctx;

 __clear_bit(MXR_BIT_VSYNC, &mixer_ctx->flags);

 if (!test_bit(MXR_BIT_POWERED, &mixer_ctx->flags))
  return;


 mixer_reg_writemask(mixer_ctx, MXR_INT_STATUS, ~0, MXR_INT_CLEAR_VSYNC);
 mixer_reg_writemask(mixer_ctx, MXR_INT_EN, 0, MXR_INT_EN_VSYNC);
}
