
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_abm {int dummy; } ;
struct abm {int dummy; } ;


 int BL1_PWM_CURRENT_ABM_LEVEL ;
 unsigned int REG_READ (int ) ;
 struct dce_abm* TO_DCE_ABM (struct abm*) ;

__attribute__((used)) static unsigned int dce_abm_get_current_backlight(struct abm *abm)
{
 struct dce_abm *abm_dce = TO_DCE_ABM(abm);
 unsigned int backlight = REG_READ(BL1_PWM_CURRENT_ABM_LEVEL);




 return backlight;
}
