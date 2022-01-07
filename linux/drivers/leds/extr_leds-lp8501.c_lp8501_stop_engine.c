
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp55xx_chip {int dummy; } ;


 int LP8501_REG_OP_MODE ;
 int lp55xx_write (struct lp55xx_chip*,int ,int ) ;
 int lp8501_wait_opmode_done () ;

__attribute__((used)) static void lp8501_stop_engine(struct lp55xx_chip *chip)
{
 lp55xx_write(chip, LP8501_REG_OP_MODE, 0);
 lp8501_wait_opmode_done();
}
