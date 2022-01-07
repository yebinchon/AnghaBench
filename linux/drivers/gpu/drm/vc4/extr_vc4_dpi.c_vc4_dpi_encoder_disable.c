
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dpi_encoder {struct vc4_dpi* dpi; } ;
struct vc4_dpi {int pixel_clock; } ;
struct drm_encoder {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct vc4_dpi_encoder* to_vc4_dpi_encoder (struct drm_encoder*) ;

__attribute__((used)) static void vc4_dpi_encoder_disable(struct drm_encoder *encoder)
{
 struct vc4_dpi_encoder *vc4_encoder = to_vc4_dpi_encoder(encoder);
 struct vc4_dpi *dpi = vc4_encoder->dpi;

 clk_disable_unprepare(dpi->pixel_clock);
}
