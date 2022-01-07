
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int BACKLIGHT_KEY ;
 int applesmc_write_key (int ,int ,int) ;
 int backlight_state ;

__attribute__((used)) static void applesmc_backlight_set(struct work_struct *work)
{
 applesmc_write_key(BACKLIGHT_KEY, backlight_state, 2);
}
