
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st7701 {int supplies; TYPE_1__* desc; int sleep_delay; int reset; } ;
struct drm_panel {int dummy; } ;
struct TYPE_2__ {int num_supplies; } ;


 int MIPI_DCS_ENTER_SLEEP_MODE ;
 int ST7701_DSI (struct st7701*,int ,int) ;
 int gpiod_set_value (int ,int ) ;
 int msleep (int ) ;
 struct st7701* panel_to_st7701 (struct drm_panel*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int st7701_unprepare(struct drm_panel *panel)
{
 struct st7701 *st7701 = panel_to_st7701(panel);

 ST7701_DSI(st7701, MIPI_DCS_ENTER_SLEEP_MODE, 0x00);

 msleep(st7701->sleep_delay);

 gpiod_set_value(st7701->reset, 0);
 msleep(st7701->sleep_delay);

 regulator_bulk_disable(st7701->desc->num_supplies, st7701->supplies);

 return 0;
}
