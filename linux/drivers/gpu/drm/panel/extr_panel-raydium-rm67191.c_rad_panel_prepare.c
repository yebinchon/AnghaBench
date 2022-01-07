
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_panel {int prepared; scalar_t__ reset; int supplies; int num_supplies; } ;
struct drm_panel {int dummy; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int regulator_bulk_enable (int ,int ) ;
 struct rad_panel* to_rad_panel (struct drm_panel*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rad_panel_prepare(struct drm_panel *panel)
{
 struct rad_panel *rad = to_rad_panel(panel);
 int ret;

 if (rad->prepared)
  return 0;

 ret = regulator_bulk_enable(rad->num_supplies, rad->supplies);
 if (ret)
  return ret;

 if (rad->reset) {
  gpiod_set_value_cansleep(rad->reset, 1);
  usleep_range(3000, 5000);
  gpiod_set_value_cansleep(rad->reset, 0);
  usleep_range(18000, 20000);
 }

 rad->prepared = 1;

 return 0;
}
