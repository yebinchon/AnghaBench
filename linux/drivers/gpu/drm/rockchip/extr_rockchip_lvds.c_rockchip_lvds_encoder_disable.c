
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_lvds {int panel; } ;
struct drm_encoder {int dummy; } ;


 int drm_panel_disable (int ) ;
 int drm_panel_unprepare (int ) ;
 struct rockchip_lvds* encoder_to_lvds (struct drm_encoder*) ;
 int rockchip_lvds_poweroff (struct rockchip_lvds*) ;

__attribute__((used)) static void rockchip_lvds_encoder_disable(struct drm_encoder *encoder)
{
 struct rockchip_lvds *lvds = encoder_to_lvds(encoder);

 drm_panel_disable(lvds->panel);
 rockchip_lvds_poweroff(lvds);
 drm_panel_unprepare(lvds->panel);
}
