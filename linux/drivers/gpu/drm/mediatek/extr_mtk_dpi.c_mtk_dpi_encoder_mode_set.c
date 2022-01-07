
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dpi {int mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 int drm_mode_copy (int *,struct drm_display_mode*) ;
 struct mtk_dpi* mtk_dpi_from_encoder (struct drm_encoder*) ;

__attribute__((used)) static void mtk_dpi_encoder_mode_set(struct drm_encoder *encoder,
         struct drm_display_mode *mode,
         struct drm_display_mode *adjusted_mode)
{
 struct mtk_dpi *dpi = mtk_dpi_from_encoder(encoder);

 drm_mode_copy(&dpi->mode, adjusted_mode);
}
