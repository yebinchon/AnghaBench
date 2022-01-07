
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9322 {int dummy; } ;
struct drm_panel {int dummy; } ;


 int ili9322_init (struct drm_panel*,struct ili9322*) ;
 int ili9322_power_on (struct ili9322*) ;
 int ili9322_unprepare (struct drm_panel*) ;
 struct ili9322* panel_to_ili9322 (struct drm_panel*) ;

__attribute__((used)) static int ili9322_prepare(struct drm_panel *panel)
{
 struct ili9322 *ili = panel_to_ili9322(panel);
 int ret;

 ret = ili9322_power_on(ili);
 if (ret < 0)
  return ret;

 ret = ili9322_init(panel, ili);
 if (ret < 0)
  ili9322_unprepare(panel);

 return ret;
}
