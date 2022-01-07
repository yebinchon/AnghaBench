
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_keypad {int kp_state; } ;


 int EIO ;
 int KEYP_CTRL ;
 int KEYP_CTRL_KBD_ON ;
 int KEYP_CTRL_SOFTMODEN ;
 int KEYP_CTRL_SOFT_NRST ;
 int KEYP_CTRL_TOE_EN ;
 int KEYP_DEB ;
 int KEYP_EDR ;
 int KEYP_EDR_KP_BOTH ;
 int KEYP_EDR_TO_RISING ;
 int KEYP_LK_PTV ;
 int KEYP_LK_PTV_PTV_SHIFT ;
 int KEYP_PERIOD_US (int,int) ;
 int KEYP_SIH_CTRL ;
 int KEYP_TIMEOUT_H ;
 int KEYP_TIMEOUT_L ;
 int PTV_PRESCALER ;
 int TWL4030_SIH_CTRL_COR_MASK ;
 int TWL4030_SIH_CTRL_PENDDIS_MASK ;
 scalar_t__ twl4030_kpwrite_u8 (struct twl4030_keypad*,int,int ) ;
 scalar_t__ twl4030_read_kp_matrix_state (struct twl4030_keypad*,int ) ;

__attribute__((used)) static int twl4030_kp_program(struct twl4030_keypad *kp)
{
 u8 reg;
 int i;


 reg = KEYP_CTRL_SOFT_NRST | KEYP_CTRL_SOFTMODEN
  | KEYP_CTRL_TOE_EN | KEYP_CTRL_KBD_ON;
 if (twl4030_kpwrite_u8(kp, reg, KEYP_CTRL) < 0)
  return -EIO;







 reg = KEYP_EDR_KP_BOTH | KEYP_EDR_TO_RISING;
 if (twl4030_kpwrite_u8(kp, reg, KEYP_EDR) < 0)
  return -EIO;


 reg = (PTV_PRESCALER << KEYP_LK_PTV_PTV_SHIFT);
 if (twl4030_kpwrite_u8(kp, reg, KEYP_LK_PTV) < 0)
  return -EIO;


 i = KEYP_PERIOD_US(20000, PTV_PRESCALER);
 if (twl4030_kpwrite_u8(kp, i, KEYP_DEB) < 0)
  return -EIO;


 i = KEYP_PERIOD_US(200000, PTV_PRESCALER);
 if (twl4030_kpwrite_u8(kp, (i & 0xFF), KEYP_TIMEOUT_L) < 0)
  return -EIO;

 if (twl4030_kpwrite_u8(kp, (i >> 8), KEYP_TIMEOUT_H) < 0)
  return -EIO;





 reg = TWL4030_SIH_CTRL_COR_MASK | TWL4030_SIH_CTRL_PENDDIS_MASK;
 if (twl4030_kpwrite_u8(kp, reg, KEYP_SIH_CTRL) < 0)
  return -EIO;


 if (twl4030_read_kp_matrix_state(kp, kp->kp_state) < 0)
  return -EIO;

 return 0;
}
