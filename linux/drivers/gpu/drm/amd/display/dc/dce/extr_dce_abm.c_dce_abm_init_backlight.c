
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dce_abm {int dummy; } ;
struct TYPE_2__ {scalar_t__ BL_PWM_CNTL; int BL_PWM_CNTL2; int BL_PWM_PERIOD_CNTL; int LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV; } ;
struct abm {TYPE_1__ stored_backlight_registers; } ;


 int ATOM_S2_VRI_BRIGHT_ENABLE ;
 int BIOS_SCRATCH_2 ;
 int BL_ACTIVE_INT_FRAC_CNT ;
 int BL_PWM_CNTL ;
 int BL_PWM_CNTL2 ;
 int BL_PWM_EN ;
 int BL_PWM_GRP1_REG_LOCK ;
 int BL_PWM_PERIOD_CNTL ;
 int BL_PWM_REF_DIV ;
 int LVTMA_PWRSEQ_REF_DIV ;
 int REG_GET (int ,int ,int*) ;
 void* REG_READ (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WRITE (int ,int) ;
 struct dce_abm* TO_DCE_ABM (struct abm*) ;

__attribute__((used)) static bool dce_abm_init_backlight(struct abm *abm)
{
 struct dce_abm *abm_dce = TO_DCE_ABM(abm);
 uint32_t value;





 REG_GET(BL_PWM_CNTL, BL_ACTIVE_INT_FRAC_CNT, &value);
 if (value == 0 || value == 1) {
  if (abm->stored_backlight_registers.BL_PWM_CNTL != 0) {
   REG_WRITE(BL_PWM_CNTL,
    abm->stored_backlight_registers.BL_PWM_CNTL);
   REG_WRITE(BL_PWM_CNTL2,
    abm->stored_backlight_registers.BL_PWM_CNTL2);
   REG_WRITE(BL_PWM_PERIOD_CNTL,
    abm->stored_backlight_registers.BL_PWM_PERIOD_CNTL);
   REG_UPDATE(LVTMA_PWRSEQ_REF_DIV,
    BL_PWM_REF_DIV,
    abm->stored_backlight_registers.
    LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV);
  } else {



   REG_WRITE(BL_PWM_CNTL, 0xC000FA00);
   REG_WRITE(BL_PWM_PERIOD_CNTL, 0x000C0FA0);
  }
 } else {
  abm->stored_backlight_registers.BL_PWM_CNTL =
    REG_READ(BL_PWM_CNTL);
  abm->stored_backlight_registers.BL_PWM_CNTL2 =
    REG_READ(BL_PWM_CNTL2);
  abm->stored_backlight_registers.BL_PWM_PERIOD_CNTL =
    REG_READ(BL_PWM_PERIOD_CNTL);

  REG_GET(LVTMA_PWRSEQ_REF_DIV, BL_PWM_REF_DIV,
    &abm->stored_backlight_registers.
    LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV);
 }




 value = REG_READ(BIOS_SCRATCH_2);
 value |= ATOM_S2_VRI_BRIGHT_ENABLE;
 REG_WRITE(BIOS_SCRATCH_2, value);


 REG_UPDATE(BL_PWM_CNTL, BL_PWM_EN, 1);


 REG_UPDATE(BL_PWM_GRP1_REG_LOCK,
   BL_PWM_GRP1_REG_LOCK, 0);

 return 1;
}
