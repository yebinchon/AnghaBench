
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct adv7511 {int dummy; } ;


 int adv7511_mode_set (struct adv7511*,struct drm_display_mode const*,struct drm_display_mode const*) ;
 struct adv7511* bridge_to_adv7511 (struct drm_bridge*) ;

__attribute__((used)) static void adv7511_bridge_mode_set(struct drm_bridge *bridge,
        const struct drm_display_mode *mode,
        const struct drm_display_mode *adj_mode)
{
 struct adv7511 *adv = bridge_to_adv7511(bridge);

 adv7511_mode_set(adv, mode, adj_mode);
}
