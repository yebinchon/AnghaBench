
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td028ttec1_panel {int dummy; } ;
struct drm_panel {int dummy; } ;


 int JBT_REG_OUTPUT_CONTROL ;
 int JBT_REG_POWER_ON_OFF ;
 int JBT_REG_SLEEP_IN ;
 int jbt_reg_write_1 (struct td028ttec1_panel*,int ,int,int *) ;
 int jbt_reg_write_2 (struct td028ttec1_panel*,int ,int,int *) ;
 int jbt_ret_write_0 (struct td028ttec1_panel*,int ,int *) ;
 struct td028ttec1_panel* to_td028ttec1_device (struct drm_panel*) ;

__attribute__((used)) static int td028ttec1_unprepare(struct drm_panel *panel)
{
 struct td028ttec1_panel *lcd = to_td028ttec1_device(panel);

 jbt_reg_write_2(lcd, JBT_REG_OUTPUT_CONTROL, 0x8002, ((void*)0));
 jbt_ret_write_0(lcd, JBT_REG_SLEEP_IN, ((void*)0));
 jbt_reg_write_1(lcd, JBT_REG_POWER_ON_OFF, 0x00, ((void*)0));

 return 0;
}
