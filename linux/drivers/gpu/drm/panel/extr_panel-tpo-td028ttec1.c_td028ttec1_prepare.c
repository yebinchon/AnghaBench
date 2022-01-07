
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td028ttec1_panel {int dummy; } ;
struct drm_panel {int dummy; } ;


 int JBT_REG_ASW_SLEW ;
 int JBT_REG_ASW_TIMING_1 ;
 int JBT_REG_ASW_TIMING_2 ;
 int JBT_REG_BLANK_CONTROL ;
 int JBT_REG_BLANK_TH_TV ;
 int JBT_REG_BOOSTER_FREQ ;
 int JBT_REG_BOOSTER_MODE ;
 int JBT_REG_BOOSTER_OP ;
 int JBT_REG_CKV_1_2 ;
 int JBT_REG_CKV_ON_OFF ;
 int JBT_REG_DCCLK_DCEV ;
 int JBT_REG_DISPLAY_MODE ;
 int JBT_REG_DISPLAY_MODE1 ;
 int JBT_REG_DISPLAY_MODE2 ;
 int JBT_REG_DRIVE_SYSTEM ;
 int JBT_REG_DUMMY_DISPLAY ;
 int JBT_REG_EXT_DISPL ;
 int JBT_REG_GAMMA1_BLUE_OFFSET ;
 int JBT_REG_GAMMA1_FINE_1 ;
 int JBT_REG_GAMMA1_FINE_2 ;
 int JBT_REG_GAMMA1_INCLINATION ;
 int JBT_REG_HCLOCK_VGA ;
 int JBT_REG_OEV_TIMING ;
 int JBT_REG_OPAMP_SYSCLK ;
 int JBT_REG_OUTPUT_CONTROL ;
 int JBT_REG_POWER_ON_OFF ;
 int JBT_REG_QUAD_RATE ;
 int JBT_REG_RGB_FORMAT ;
 int JBT_REG_SLEEP_IN_LCCNT_D ;
 int JBT_REG_SLEEP_IN_LCCNT_E ;
 int JBT_REG_SLEEP_IN_LCCNT_F ;
 int JBT_REG_SLEEP_IN_LCCNT_G ;
 int JBT_REG_SLEEP_OUT ;
 int JBT_REG_SLEEP_OUT_FR_A ;
 int JBT_REG_SLEEP_OUT_FR_B ;
 int JBT_REG_SLEEP_OUT_FR_C ;
 int JBT_REG_VCOM_VOLTAGE ;
 int JBT_REG_VSC_VOLTAGE ;
 int jbt_reg_write_1 (struct td028ttec1_panel*,int ,int,int*) ;
 int jbt_reg_write_2 (struct td028ttec1_panel*,int ,int,int*) ;
 int jbt_ret_write_0 (struct td028ttec1_panel*,int,int*) ;
 struct td028ttec1_panel* to_td028ttec1_device (struct drm_panel*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int td028ttec1_prepare(struct drm_panel *panel)
{
 struct td028ttec1_panel *lcd = to_td028ttec1_device(panel);
 unsigned int i;
 int ret = 0;


 for (i = 0; i < 3; ++i) {
  jbt_ret_write_0(lcd, 0x00, &ret);
  usleep_range(1000, 2000);
 }


 jbt_reg_write_1(lcd, JBT_REG_POWER_ON_OFF, 0x17, &ret);


 jbt_reg_write_1(lcd, JBT_REG_DISPLAY_MODE, 0x80, &ret);


 jbt_reg_write_1(lcd, JBT_REG_QUAD_RATE, 0x00, &ret);


 jbt_reg_write_1(lcd, JBT_REG_POWER_ON_OFF, 0x16, &ret);


 jbt_reg_write_2(lcd, JBT_REG_OUTPUT_CONTROL, 0xfff9, &ret);


 jbt_ret_write_0(lcd, JBT_REG_SLEEP_OUT, &ret);




 jbt_reg_write_1(lcd, JBT_REG_DISPLAY_MODE1, 0x01, &ret);
 jbt_reg_write_1(lcd, JBT_REG_DISPLAY_MODE2, 0x00, &ret);
 jbt_reg_write_1(lcd, JBT_REG_RGB_FORMAT, 0x60, &ret);
 jbt_reg_write_1(lcd, JBT_REG_DRIVE_SYSTEM, 0x10, &ret);
 jbt_reg_write_1(lcd, JBT_REG_BOOSTER_OP, 0x56, &ret);
 jbt_reg_write_1(lcd, JBT_REG_BOOSTER_MODE, 0x33, &ret);
 jbt_reg_write_1(lcd, JBT_REG_BOOSTER_FREQ, 0x11, &ret);
 jbt_reg_write_1(lcd, JBT_REG_BOOSTER_FREQ, 0x11, &ret);
 jbt_reg_write_1(lcd, JBT_REG_OPAMP_SYSCLK, 0x02, &ret);
 jbt_reg_write_1(lcd, JBT_REG_VSC_VOLTAGE, 0x2b, &ret);
 jbt_reg_write_1(lcd, JBT_REG_VCOM_VOLTAGE, 0x40, &ret);
 jbt_reg_write_1(lcd, JBT_REG_EXT_DISPL, 0x03, &ret);
 jbt_reg_write_1(lcd, JBT_REG_DCCLK_DCEV, 0x04, &ret);




 jbt_reg_write_1(lcd, JBT_REG_ASW_SLEW, 0x04, &ret);
 jbt_reg_write_1(lcd, JBT_REG_DUMMY_DISPLAY, 0x00, &ret);

 jbt_reg_write_1(lcd, JBT_REG_SLEEP_OUT_FR_A, 0x11, &ret);
 jbt_reg_write_1(lcd, JBT_REG_SLEEP_OUT_FR_B, 0x11, &ret);
 jbt_reg_write_1(lcd, JBT_REG_SLEEP_OUT_FR_C, 0x11, &ret);
 jbt_reg_write_2(lcd, JBT_REG_SLEEP_IN_LCCNT_D, 0x2040, &ret);
 jbt_reg_write_2(lcd, JBT_REG_SLEEP_IN_LCCNT_E, 0x60c0, &ret);
 jbt_reg_write_2(lcd, JBT_REG_SLEEP_IN_LCCNT_F, 0x1020, &ret);
 jbt_reg_write_2(lcd, JBT_REG_SLEEP_IN_LCCNT_G, 0x60c0, &ret);

 jbt_reg_write_2(lcd, JBT_REG_GAMMA1_FINE_1, 0x5533, &ret);
 jbt_reg_write_1(lcd, JBT_REG_GAMMA1_FINE_2, 0x00, &ret);
 jbt_reg_write_1(lcd, JBT_REG_GAMMA1_INCLINATION, 0x00, &ret);
 jbt_reg_write_1(lcd, JBT_REG_GAMMA1_BLUE_OFFSET, 0x00, &ret);

 jbt_reg_write_2(lcd, JBT_REG_HCLOCK_VGA, 0x1f0, &ret);
 jbt_reg_write_1(lcd, JBT_REG_BLANK_CONTROL, 0x02, &ret);
 jbt_reg_write_2(lcd, JBT_REG_BLANK_TH_TV, 0x0804, &ret);

 jbt_reg_write_1(lcd, JBT_REG_CKV_ON_OFF, 0x01, &ret);
 jbt_reg_write_2(lcd, JBT_REG_CKV_1_2, 0x0000, &ret);

 jbt_reg_write_2(lcd, JBT_REG_OEV_TIMING, 0x0d0e, &ret);
 jbt_reg_write_2(lcd, JBT_REG_ASW_TIMING_1, 0x11a4, &ret);
 jbt_reg_write_1(lcd, JBT_REG_ASW_TIMING_2, 0x0e, &ret);

 return ret;
}
