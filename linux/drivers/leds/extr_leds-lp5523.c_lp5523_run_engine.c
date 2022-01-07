
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_chip {int dummy; } ;


 scalar_t__ LP5523_ENG1_IS_LOADING (int) ;
 scalar_t__ LP5523_ENG2_IS_LOADING (int) ;
 scalar_t__ LP5523_ENG3_IS_LOADING (int) ;
 int LP5523_EXEC_ENG1_M ;
 int LP5523_EXEC_ENG2_M ;
 int LP5523_EXEC_ENG3_M ;
 int LP5523_EXEC_M ;
 int LP5523_MODE_ENG1_M ;
 int LP5523_MODE_ENG2_M ;
 int LP5523_MODE_ENG3_M ;
 int LP5523_REG_ENABLE ;
 int LP5523_REG_OP_MODE ;
 int LP5523_RUN_ENG1 ;
 int LP5523_RUN_ENG2 ;
 int LP5523_RUN_ENG3 ;
 int lp5523_stop_engine (struct lp55xx_chip*) ;
 int lp5523_turn_off_channels (struct lp55xx_chip*) ;
 int lp5523_wait_opmode_done () ;
 int lp55xx_read (struct lp55xx_chip*,int ,int*) ;
 int lp55xx_update_bits (struct lp55xx_chip*,int ,int ,int) ;
 int lp55xx_write (struct lp55xx_chip*,int ,int) ;

__attribute__((used)) static void lp5523_run_engine(struct lp55xx_chip *chip, bool start)
{
 int ret;
 u8 mode;
 u8 exec;


 if (!start) {
  lp5523_stop_engine(chip);
  lp5523_turn_off_channels(chip);
  return;
 }






 ret = lp55xx_read(chip, LP5523_REG_OP_MODE, &mode);
 if (ret)
  return;

 ret = lp55xx_read(chip, LP5523_REG_ENABLE, &exec);
 if (ret)
  return;


 if (LP5523_ENG1_IS_LOADING(mode)) {
  mode = (mode & ~LP5523_MODE_ENG1_M) | LP5523_RUN_ENG1;
  exec = (exec & ~LP5523_EXEC_ENG1_M) | LP5523_RUN_ENG1;
 }

 if (LP5523_ENG2_IS_LOADING(mode)) {
  mode = (mode & ~LP5523_MODE_ENG2_M) | LP5523_RUN_ENG2;
  exec = (exec & ~LP5523_EXEC_ENG2_M) | LP5523_RUN_ENG2;
 }

 if (LP5523_ENG3_IS_LOADING(mode)) {
  mode = (mode & ~LP5523_MODE_ENG3_M) | LP5523_RUN_ENG3;
  exec = (exec & ~LP5523_EXEC_ENG3_M) | LP5523_RUN_ENG3;
 }

 lp55xx_write(chip, LP5523_REG_OP_MODE, mode);
 lp5523_wait_opmode_done();

 lp55xx_update_bits(chip, LP5523_REG_ENABLE, LP5523_EXEC_M, exec);
}
