
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_drm {int map; } ;
struct drm_crtc {int dummy; } ;


 int JZ_LCD_CTRL_EOF_IRQ ;
 int JZ_REG_LCD_CTRL ;
 struct ingenic_drm* drm_crtc_get_priv (struct drm_crtc*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void ingenic_drm_disable_vblank(struct drm_crtc *crtc)
{
 struct ingenic_drm *priv = drm_crtc_get_priv(crtc);

 regmap_update_bits(priv->map, JZ_REG_LCD_CTRL, JZ_LCD_CTRL_EOF_IRQ, 0);
}
