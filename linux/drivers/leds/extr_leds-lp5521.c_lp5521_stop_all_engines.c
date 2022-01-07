
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_chip {int dummy; } ;


 int LP5521_REG_OP_MODE ;
 int lp5521_wait_opmode_done () ;
 int lp55xx_write (struct lp55xx_chip*,int ,int ) ;

__attribute__((used)) static void lp5521_stop_all_engines(struct lp55xx_chip *chip)
{
 lp55xx_write(chip, LP5521_REG_OP_MODE, 0);
 lp5521_wait_opmode_done();
}
