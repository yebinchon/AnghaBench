
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st7701 {int reset; int supplies; TYPE_1__* desc; } ;
struct drm_panel {int dummy; } ;
struct TYPE_2__ {int num_supplies; } ;


 int gpiod_set_value (int ,int) ;
 int msleep (int) ;
 struct st7701* panel_to_st7701 (struct drm_panel*) ;
 int regulator_bulk_enable (int ,int ) ;
 int st7701_init_sequence (struct st7701*) ;

__attribute__((used)) static int st7701_prepare(struct drm_panel *panel)
{
 struct st7701 *st7701 = panel_to_st7701(panel);
 int ret;

 gpiod_set_value(st7701->reset, 0);

 ret = regulator_bulk_enable(st7701->desc->num_supplies,
        st7701->supplies);
 if (ret < 0)
  return ret;
 msleep(20);

 gpiod_set_value(st7701->reset, 1);
 msleep(150);

 st7701_init_sequence(st7701);

 return 0;
}
