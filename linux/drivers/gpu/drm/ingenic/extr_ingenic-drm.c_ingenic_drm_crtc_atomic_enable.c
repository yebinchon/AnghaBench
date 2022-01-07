
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_drm {int map; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int JZ_LCD_CTRL_DISABLE ;
 int JZ_LCD_CTRL_ENABLE ;
 int JZ_REG_LCD_CTRL ;
 int JZ_REG_LCD_STATE ;
 struct ingenic_drm* drm_crtc_get_priv (struct drm_crtc*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void ingenic_drm_crtc_atomic_enable(struct drm_crtc *crtc,
        struct drm_crtc_state *state)
{
 struct ingenic_drm *priv = drm_crtc_get_priv(crtc);

 regmap_write(priv->map, JZ_REG_LCD_STATE, 0);

 regmap_update_bits(priv->map, JZ_REG_LCD_CTRL,
      JZ_LCD_CTRL_ENABLE | JZ_LCD_CTRL_DISABLE,
      JZ_LCD_CTRL_ENABLE);

 drm_crtc_vblank_on(crtc);
}
