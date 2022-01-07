
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dpi {int mode; } ;
struct drm_encoder {int dummy; } ;


 struct mtk_dpi* mtk_dpi_from_encoder (struct drm_encoder*) ;
 int mtk_dpi_power_on (struct mtk_dpi*) ;
 int mtk_dpi_set_display_mode (struct mtk_dpi*,int *) ;

__attribute__((used)) static void mtk_dpi_encoder_enable(struct drm_encoder *encoder)
{
 struct mtk_dpi *dpi = mtk_dpi_from_encoder(encoder);

 mtk_dpi_power_on(dpi);
 mtk_dpi_set_display_mode(dpi, &dpi->mode);
}
