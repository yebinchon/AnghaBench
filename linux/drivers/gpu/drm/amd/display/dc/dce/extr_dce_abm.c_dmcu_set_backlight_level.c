
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_abm {int base; } ;


 int ATOM_S2_CURRENT_BL_LEVEL_MASK ;
 int ATOM_S2_CURRENT_BL_LEVEL_SHIFT ;
 int BIOS_SCRATCH_2 ;
 int BL1_PWM_USER_LEVEL ;
 int MASTER_COMM_CMD_REG ;
 int MASTER_COMM_CMD_REG_BYTE0 ;
 int MASTER_COMM_CNTL_REG ;
 int MASTER_COMM_DATA_REG1 ;
 int MASTER_COMM_INTERRUPT ;
 int MCP_BL_SET ;
 int REG_READ (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WAIT (int ,int ,int ,int,int) ;
 int REG_WRITE (int ,int) ;
 int dce_abm_set_pipe (int *,int) ;

__attribute__((used)) static void dmcu_set_backlight_level(
 struct dce_abm *abm_dce,
 uint32_t backlight_pwm_u16_16,
 uint32_t frame_ramp,
 uint32_t controller_id)
{
 unsigned int backlight_8_bit = 0;
 uint32_t s2;

 if (backlight_pwm_u16_16 & 0x10000)

  backlight_8_bit = 0xFF;
 else

  backlight_8_bit = (backlight_pwm_u16_16 >> 8) & 0xFF;

 dce_abm_set_pipe(&abm_dce->base, controller_id);


 REG_WAIT(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT,
   0, 1, 80000);


 REG_UPDATE(BL1_PWM_USER_LEVEL, BL1_PWM_USER_LEVEL, backlight_pwm_u16_16);


 if (controller_id == 0)
  frame_ramp = 0;
 REG_WRITE(MASTER_COMM_DATA_REG1, frame_ramp);


 REG_UPDATE(MASTER_COMM_CMD_REG, MASTER_COMM_CMD_REG_BYTE0, MCP_BL_SET);


 REG_UPDATE(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 1);


 s2 = REG_READ(BIOS_SCRATCH_2);

 s2 &= ~ATOM_S2_CURRENT_BL_LEVEL_MASK;
 backlight_8_bit &= (ATOM_S2_CURRENT_BL_LEVEL_MASK >>
    ATOM_S2_CURRENT_BL_LEVEL_SHIFT);
 s2 |= (backlight_8_bit << ATOM_S2_CURRENT_BL_LEVEL_SHIFT);

 REG_WRITE(BIOS_SCRATCH_2, s2);


 REG_WAIT(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT,
   0, 1, 80000);
}
