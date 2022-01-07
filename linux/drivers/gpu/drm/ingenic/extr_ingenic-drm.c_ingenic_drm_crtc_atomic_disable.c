
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_drm {int map; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int JZ_LCD_CTRL_DISABLE ;
 unsigned int JZ_LCD_STATE_DISABLED ;
 int JZ_REG_LCD_CTRL ;
 int JZ_REG_LCD_STATE ;
 struct ingenic_drm* drm_crtc_get_priv (struct drm_crtc*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,unsigned int,int,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void ingenic_drm_crtc_atomic_disable(struct drm_crtc *crtc,
         struct drm_crtc_state *state)
{
 struct ingenic_drm *priv = drm_crtc_get_priv(crtc);
 unsigned int var;

 drm_crtc_vblank_off(crtc);

 regmap_update_bits(priv->map, JZ_REG_LCD_CTRL,
      JZ_LCD_CTRL_DISABLE, JZ_LCD_CTRL_DISABLE);

 regmap_read_poll_timeout(priv->map, JZ_REG_LCD_STATE, var,
     var & JZ_LCD_STATE_DISABLED,
     1000, 0);
}
