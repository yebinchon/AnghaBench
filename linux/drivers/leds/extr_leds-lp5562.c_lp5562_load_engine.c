
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_chip {int engine_idx; } ;
typedef enum lp55xx_engine_index { ____Placeholder_lp55xx_engine_index } lp55xx_engine_index ;
 int LP5562_REG_OP_MODE ;



 int lp5562_wait_opmode_done () ;
 int lp55xx_update_bits (struct lp55xx_chip*,int ,int const,int const) ;

__attribute__((used)) static void lp5562_load_engine(struct lp55xx_chip *chip)
{
 enum lp55xx_engine_index idx = chip->engine_idx;
 static const u8 mask[] = {
  [130] = 133,
  [129] = 132,
  [128] = 131,
 };

 static const u8 val[] = {
  [130] = 136,
  [129] = 135,
  [128] = 134,
 };

 lp55xx_update_bits(chip, LP5562_REG_OP_MODE, mask[idx], val[idx]);

 lp5562_wait_opmode_done();
}
