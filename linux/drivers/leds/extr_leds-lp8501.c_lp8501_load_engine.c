
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_chip {int engine_idx; } ;
typedef enum lp55xx_engine_index { ____Placeholder_lp55xx_engine_index } lp55xx_engine_index ;
 int LP8501_REG_OP_MODE ;
 int LP8501_REG_PROG_PAGE_SEL ;
 int lp55xx_update_bits (struct lp55xx_chip*,int ,int const,int const) ;
 int lp55xx_write (struct lp55xx_chip*,int ,int const) ;
 int lp8501_wait_opmode_done () ;

__attribute__((used)) static void lp8501_load_engine(struct lp55xx_chip *chip)
{
 enum lp55xx_engine_index idx = chip->engine_idx;
 static const u8 mask[] = {
  [139] = 133,
  [138] = 132,
  [137] = 131,
 };

 static const u8 val[] = {
  [139] = 136,
  [138] = 135,
  [137] = 134,
 };

 static const u8 page_sel[] = {
  [139] = 130,
  [138] = 129,
  [137] = 128,
 };

 lp55xx_update_bits(chip, LP8501_REG_OP_MODE, mask[idx], val[idx]);

 lp8501_wait_opmode_done();

 lp55xx_write(chip, LP8501_REG_PROG_PAGE_SEL, page_sel[idx]);
}
