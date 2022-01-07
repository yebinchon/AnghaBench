
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_dpi {scalar_t__ panel; } ;
struct drm_encoder {int dummy; } ;


 int drm_panel_disable (scalar_t__) ;
 int drm_panel_unprepare (scalar_t__) ;
 struct exynos_dpi* encoder_to_dpi (struct drm_encoder*) ;

__attribute__((used)) static void exynos_dpi_disable(struct drm_encoder *encoder)
{
 struct exynos_dpi *ctx = encoder_to_dpi(encoder);

 if (ctx->panel) {
  drm_panel_disable(ctx->panel);
  drm_panel_unprepare(ctx->panel);
 }
}
