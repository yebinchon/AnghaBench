
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seiko_panel {int dummy; } ;
struct drm_panel {int dummy; } ;


 int seiko_panel_get_fixed_modes (struct seiko_panel*) ;
 struct seiko_panel* to_seiko_panel (struct drm_panel*) ;

__attribute__((used)) static int seiko_panel_get_modes(struct drm_panel *panel)
{
 struct seiko_panel *p = to_seiko_panel(panel);


 return seiko_panel_get_fixed_modes(p);
}
