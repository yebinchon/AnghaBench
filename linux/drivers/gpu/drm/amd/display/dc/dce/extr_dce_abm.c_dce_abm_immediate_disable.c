
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dce_abm {int dummy; } ;
struct TYPE_2__ {int LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV; void* BL_PWM_PERIOD_CNTL; void* BL_PWM_CNTL2; void* BL_PWM_CNTL; } ;
struct abm {int dmcu_is_running; TYPE_1__ stored_backlight_registers; } ;


 int BL_PWM_CNTL ;
 int BL_PWM_CNTL2 ;
 int BL_PWM_PERIOD_CNTL ;
 int BL_PWM_REF_DIV ;
 int LVTMA_PWRSEQ_REF_DIV ;
 int MCP_DISABLE_ABM_IMMEDIATELY ;
 int REG_GET (int ,int ,int *) ;
 void* REG_READ (int ) ;
 struct dce_abm* TO_DCE_ABM (struct abm*) ;
 int dce_abm_set_pipe (struct abm*,int ) ;

__attribute__((used)) static bool dce_abm_immediate_disable(struct abm *abm)
{
 struct dce_abm *abm_dce = TO_DCE_ABM(abm);

 if (abm->dmcu_is_running == 0)
  return 1;

 dce_abm_set_pipe(abm, MCP_DISABLE_ABM_IMMEDIATELY);

 abm->stored_backlight_registers.BL_PWM_CNTL =
  REG_READ(BL_PWM_CNTL);
 abm->stored_backlight_registers.BL_PWM_CNTL2 =
  REG_READ(BL_PWM_CNTL2);
 abm->stored_backlight_registers.BL_PWM_PERIOD_CNTL =
  REG_READ(BL_PWM_PERIOD_CNTL);

 REG_GET(LVTMA_PWRSEQ_REF_DIV, BL_PWM_REF_DIV,
  &abm->stored_backlight_registers.LVTMA_PWRSEQ_REF_DIV_BL_PWM_REF_DIV);
 return 1;
}
