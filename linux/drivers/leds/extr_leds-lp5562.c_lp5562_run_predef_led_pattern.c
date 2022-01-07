
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lp55xx_predef_pattern {int size_b; int b; int size_g; int g; int size_r; int r; } ;
struct lp55xx_chip {int engine_idx; TYPE_2__* cl; TYPE_1__* pdata; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct lp55xx_predef_pattern* patterns; } ;


 int EINVAL ;
 int LP5562_ENG_SEL_RGB ;
 int LP5562_PATTERN_OFF ;
 scalar_t__ LP5562_REG_ENG_SEL ;
 scalar_t__ LP5562_REG_PROG_MEM_ENG1 ;
 scalar_t__ LP5562_REG_PROG_MEM_ENG2 ;
 scalar_t__ LP5562_REG_PROG_MEM_ENG3 ;
 int LP55XX_ENGINE_1 ;
 int LP55XX_ENGINE_3 ;
 scalar_t__ _is_pc_overflow (struct lp55xx_predef_pattern*) ;
 int dev_err (int *,char*) ;
 int lp5562_load_engine (struct lp55xx_chip*) ;
 int lp5562_run_engine (struct lp55xx_chip*,int) ;
 int lp5562_stop_engine (struct lp55xx_chip*) ;
 int lp5562_write_program_memory (struct lp55xx_chip*,scalar_t__,int ,int ) ;
 int lp55xx_write (struct lp55xx_chip*,scalar_t__,int ) ;

__attribute__((used)) static int lp5562_run_predef_led_pattern(struct lp55xx_chip *chip, int mode)
{
 struct lp55xx_predef_pattern *ptn;
 int i;

 if (mode == LP5562_PATTERN_OFF) {
  lp5562_run_engine(chip, 0);
  return 0;
 }

 ptn = chip->pdata->patterns + (mode - 1);
 if (!ptn || _is_pc_overflow(ptn)) {
  dev_err(&chip->cl->dev, "invalid pattern data\n");
  return -EINVAL;
 }

 lp5562_stop_engine(chip);


 lp55xx_write(chip, LP5562_REG_ENG_SEL, LP5562_ENG_SEL_RGB);


 for (i = LP55XX_ENGINE_1; i <= LP55XX_ENGINE_3; i++) {
  chip->engine_idx = i;
  lp5562_load_engine(chip);
 }


 lp55xx_write(chip, LP5562_REG_PROG_MEM_ENG1, 0);
 lp55xx_write(chip, LP5562_REG_PROG_MEM_ENG1 + 1, 0);
 lp55xx_write(chip, LP5562_REG_PROG_MEM_ENG2, 0);
 lp55xx_write(chip, LP5562_REG_PROG_MEM_ENG2 + 1, 0);
 lp55xx_write(chip, LP5562_REG_PROG_MEM_ENG3, 0);
 lp55xx_write(chip, LP5562_REG_PROG_MEM_ENG3 + 1, 0);


 lp5562_write_program_memory(chip, LP5562_REG_PROG_MEM_ENG1,
    ptn->r, ptn->size_r);
 lp5562_write_program_memory(chip, LP5562_REG_PROG_MEM_ENG2,
    ptn->g, ptn->size_g);
 lp5562_write_program_memory(chip, LP5562_REG_PROG_MEM_ENG3,
    ptn->b, ptn->size_b);


 lp5562_run_engine(chip, 1);

 return 0;
}
