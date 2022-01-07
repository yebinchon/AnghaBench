
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {int dummy; } ;
struct drm_encoder {int dummy; } ;


 struct mtk_dsi* encoder_to_dsi (struct drm_encoder*) ;
 int mtk_output_dsi_disable (struct mtk_dsi*) ;

__attribute__((used)) static void mtk_dsi_encoder_disable(struct drm_encoder *encoder)
{
 struct mtk_dsi *dsi = encoder_to_dsi(encoder);

 mtk_output_dsi_disable(dsi);
}
