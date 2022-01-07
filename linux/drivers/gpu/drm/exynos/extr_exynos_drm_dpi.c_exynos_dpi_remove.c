
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_dpi {scalar_t__ panel; int encoder; } ;
struct drm_encoder {int dummy; } ;


 int drm_panel_detach (scalar_t__) ;
 struct exynos_dpi* encoder_to_dpi (struct drm_encoder*) ;
 int exynos_dpi_disable (int *) ;

int exynos_dpi_remove(struct drm_encoder *encoder)
{
 struct exynos_dpi *ctx = encoder_to_dpi(encoder);

 exynos_dpi_disable(&ctx->encoder);

 if (ctx->panel)
  drm_panel_detach(ctx->panel);

 return 0;
}
