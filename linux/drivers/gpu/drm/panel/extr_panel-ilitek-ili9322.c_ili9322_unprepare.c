
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9322 {int dummy; } ;
struct drm_panel {int dummy; } ;


 int ili9322_power_off (struct ili9322*) ;
 struct ili9322* panel_to_ili9322 (struct drm_panel*) ;

__attribute__((used)) static int ili9322_unprepare(struct drm_panel *panel)
{
 struct ili9322 *ili = panel_to_ili9322(panel);

 return ili9322_power_off(ili);
}
