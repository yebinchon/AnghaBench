
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_chip {int dummy; } ;


 scalar_t__ LP8501_ENG1_IS_LOADING (int) ;
 scalar_t__ LP8501_ENG2_IS_LOADING (int) ;
 scalar_t__ LP8501_ENG3_IS_LOADING (int) ;
 int LP8501_EXEC_ENG1_M ;
 int LP8501_EXEC_ENG2_M ;
 int LP8501_EXEC_ENG3_M ;
 int LP8501_EXEC_M ;
 int LP8501_MODE_ENG1_M ;
 int LP8501_MODE_ENG2_M ;
 int LP8501_MODE_ENG3_M ;
 int LP8501_REG_ENABLE ;
 int LP8501_REG_OP_MODE ;
 int LP8501_RUN_ENG1 ;
 int LP8501_RUN_ENG2 ;
 int LP8501_RUN_ENG3 ;
 int lp55xx_read (struct lp55xx_chip*,int ,int*) ;
 int lp55xx_update_bits (struct lp55xx_chip*,int ,int ,int) ;
 int lp55xx_write (struct lp55xx_chip*,int ,int) ;
 int lp8501_stop_engine (struct lp55xx_chip*) ;
 int lp8501_turn_off_channels (struct lp55xx_chip*) ;
 int lp8501_wait_opmode_done () ;

__attribute__((used)) static void lp8501_run_engine(struct lp55xx_chip *chip, bool start)
{
 int ret;
 u8 mode;
 u8 exec;


 if (!start) {
  lp8501_stop_engine(chip);
  lp8501_turn_off_channels(chip);
  return;
 }






 ret = lp55xx_read(chip, LP8501_REG_OP_MODE, &mode);
 if (ret)
  return;

 ret = lp55xx_read(chip, LP8501_REG_ENABLE, &exec);
 if (ret)
  return;


 if (LP8501_ENG1_IS_LOADING(mode)) {
  mode = (mode & ~LP8501_MODE_ENG1_M) | LP8501_RUN_ENG1;
  exec = (exec & ~LP8501_EXEC_ENG1_M) | LP8501_RUN_ENG1;
 }

 if (LP8501_ENG2_IS_LOADING(mode)) {
  mode = (mode & ~LP8501_MODE_ENG2_M) | LP8501_RUN_ENG2;
  exec = (exec & ~LP8501_EXEC_ENG2_M) | LP8501_RUN_ENG2;
 }

 if (LP8501_ENG3_IS_LOADING(mode)) {
  mode = (mode & ~LP8501_MODE_ENG3_M) | LP8501_RUN_ENG3;
  exec = (exec & ~LP8501_EXEC_ENG3_M) | LP8501_RUN_ENG3;
 }

 lp55xx_write(chip, LP8501_REG_OP_MODE, mode);
 lp8501_wait_opmode_done();

 lp55xx_update_bits(chip, LP8501_REG_ENABLE, LP8501_EXEC_M, exec);
}
