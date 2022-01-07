
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_abm {int dummy; } ;
struct abm {int dummy; } ;


 int ABM1_BL_REG_READ_MISSED_FRAME_CLEAR ;
 int ABM1_HG_BIN_BITWIDTH_SIZE_SEL ;
 int ABM1_HG_NUM_OF_BINS_SEL ;
 int ABM1_HG_REG_READ_MISSED_FRAME_CLEAR ;
 int ABM1_HG_VMAX_SEL ;
 int ABM1_IPCSC_COEFF_SEL_B ;
 int ABM1_IPCSC_COEFF_SEL_G ;
 int ABM1_IPCSC_COEFF_SEL_R ;
 int ABM1_LS_MAX_PIXEL_VALUE_THRES ;
 int ABM1_LS_MIN_PIXEL_VALUE_THRES ;
 int ABM1_LS_REG_READ_MISSED_FRAME_CLEAR ;
 int BL1_PWM_BL_UPDATE_SAMPLE_RATE ;
 int BL1_PWM_CURRENT_ABM_LEVEL ;
 int BL1_PWM_TARGET_ABM_LEVEL ;
 int BL1_PWM_USER_LEVEL ;
 int DC_ABM1_HGLS_REG_READ_PROGRESS ;
 int DC_ABM1_HG_MISC_CTRL ;
 int DC_ABM1_HG_SAMPLE_RATE ;
 int DC_ABM1_IPCSC_COEFF_SEL ;
 int DC_ABM1_LS_MIN_MAX_PIXEL_VALUE_THRES ;
 int DC_ABM1_LS_SAMPLE_RATE ;
 int REG_SET_3 (int ,int ,int ,int,int ,int,int ,int) ;
 int REG_UPDATE (int ,int ,unsigned int) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int) ;
 int REG_WRITE (int ,int) ;
 struct dce_abm* TO_DCE_ABM (struct abm*) ;
 unsigned int calculate_16_bit_backlight_from_pwm (struct dce_abm*) ;

__attribute__((used)) static void dce_abm_init(struct abm *abm)
{
 struct dce_abm *abm_dce = TO_DCE_ABM(abm);
 unsigned int backlight = calculate_16_bit_backlight_from_pwm(abm_dce);

 REG_WRITE(DC_ABM1_HG_SAMPLE_RATE, 0x103);
 REG_WRITE(DC_ABM1_HG_SAMPLE_RATE, 0x101);
 REG_WRITE(DC_ABM1_LS_SAMPLE_RATE, 0x103);
 REG_WRITE(DC_ABM1_LS_SAMPLE_RATE, 0x101);
 REG_WRITE(BL1_PWM_BL_UPDATE_SAMPLE_RATE, 0x101);

 REG_SET_3(DC_ABM1_HG_MISC_CTRL, 0,
   ABM1_HG_NUM_OF_BINS_SEL, 0,
   ABM1_HG_VMAX_SEL, 1,
   ABM1_HG_BIN_BITWIDTH_SIZE_SEL, 0);

 REG_SET_3(DC_ABM1_IPCSC_COEFF_SEL, 0,
   ABM1_IPCSC_COEFF_SEL_R, 2,
   ABM1_IPCSC_COEFF_SEL_G, 4,
   ABM1_IPCSC_COEFF_SEL_B, 2);

 REG_UPDATE(BL1_PWM_CURRENT_ABM_LEVEL,
   BL1_PWM_CURRENT_ABM_LEVEL, backlight);

 REG_UPDATE(BL1_PWM_TARGET_ABM_LEVEL,
   BL1_PWM_TARGET_ABM_LEVEL, backlight);

 REG_UPDATE(BL1_PWM_USER_LEVEL,
   BL1_PWM_USER_LEVEL, backlight);

 REG_UPDATE_2(DC_ABM1_LS_MIN_MAX_PIXEL_VALUE_THRES,
   ABM1_LS_MIN_PIXEL_VALUE_THRES, 0,
   ABM1_LS_MAX_PIXEL_VALUE_THRES, 1000);

 REG_SET_3(DC_ABM1_HGLS_REG_READ_PROGRESS, 0,
   ABM1_HG_REG_READ_MISSED_FRAME_CLEAR, 1,
   ABM1_LS_REG_READ_MISSED_FRAME_CLEAR, 1,
   ABM1_BL_REG_READ_MISSED_FRAME_CLEAR, 1);
}
