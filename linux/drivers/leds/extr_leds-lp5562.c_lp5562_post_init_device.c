
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_chip {int dummy; } ;


 int LP5562_CLK_INT ;
 int LP5562_CMD_DIRECT ;
 int LP5562_DEFAULT_CFG ;
 int LP5562_ENG_SEL_PWM ;
 int LP5562_REG_B_PWM ;
 int LP5562_REG_CONFIG ;
 int LP5562_REG_ENG_SEL ;
 int LP5562_REG_G_PWM ;
 int LP5562_REG_OP_MODE ;
 int LP5562_REG_R_PWM ;
 int LP5562_REG_W_PWM ;
 int lp5562_wait_opmode_done () ;
 int lp55xx_is_extclk_used (struct lp55xx_chip*) ;
 int lp55xx_write (struct lp55xx_chip*,int ,int ) ;

__attribute__((used)) static int lp5562_post_init_device(struct lp55xx_chip *chip)
{
 int ret;
 u8 cfg = LP5562_DEFAULT_CFG;


 ret = lp55xx_write(chip, LP5562_REG_OP_MODE, LP5562_CMD_DIRECT);
 if (ret)
  return ret;

 lp5562_wait_opmode_done();


 if (!lp55xx_is_extclk_used(chip))
  cfg |= LP5562_CLK_INT;

 ret = lp55xx_write(chip, LP5562_REG_CONFIG, cfg);
 if (ret)
  return ret;


 lp55xx_write(chip, LP5562_REG_R_PWM, 0);
 lp55xx_write(chip, LP5562_REG_G_PWM, 0);
 lp55xx_write(chip, LP5562_REG_B_PWM, 0);
 lp55xx_write(chip, LP5562_REG_W_PWM, 0);


 lp55xx_write(chip, LP5562_REG_ENG_SEL, LP5562_ENG_SEL_PWM);

 return 0;
}
