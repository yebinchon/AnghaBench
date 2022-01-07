
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {int vm; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 int drm_display_mode_to_videomode (struct drm_display_mode*,int *) ;
 struct mtk_dsi* encoder_to_dsi (struct drm_encoder*) ;

__attribute__((used)) static void mtk_dsi_encoder_mode_set(struct drm_encoder *encoder,
         struct drm_display_mode *mode,
         struct drm_display_mode *adjusted)
{
 struct mtk_dsi *dsi = encoder_to_dsi(encoder);

 drm_display_mode_to_videomode(adjusted, &dsi->vm);
}
