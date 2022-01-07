
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_abm {int dummy; } ;
struct abm {int dummy; } ;


 int DC_LOG_BACKLIGHT (char*,unsigned int,unsigned int) ;
 struct dce_abm* TO_DCE_ABM (struct abm*) ;
 int dmcu_set_backlight_level (struct dce_abm*,unsigned int,unsigned int,unsigned int) ;
 int driver_set_backlight_level (struct dce_abm*,unsigned int) ;

__attribute__((used)) static bool dce_abm_set_backlight_level_pwm(
  struct abm *abm,
  unsigned int backlight_pwm_u16_16,
  unsigned int frame_ramp,
  unsigned int controller_id,
  bool use_smooth_brightness)
{
 struct dce_abm *abm_dce = TO_DCE_ABM(abm);

 DC_LOG_BACKLIGHT("New Backlight level: %d (0x%X)\n",
   backlight_pwm_u16_16, backlight_pwm_u16_16);


 if (use_smooth_brightness)
  dmcu_set_backlight_level(abm_dce,
    backlight_pwm_u16_16,
    frame_ramp,
    controller_id);
 else
  driver_set_backlight_level(abm_dce, backlight_pwm_u16_16);

 return 1;
}
