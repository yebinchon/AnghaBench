
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_chip {int engine_idx; } ;
typedef enum lp55xx_engine_index { ____Placeholder_lp55xx_engine_index } lp55xx_engine_index ;





 int LP5523_REG_OP_MODE ;



 int lp5523_wait_opmode_done () ;
 int lp55xx_update_bits (struct lp55xx_chip*,int ,int const,int ) ;

__attribute__((used)) static void lp5523_stop_engine(struct lp55xx_chip *chip)
{
 enum lp55xx_engine_index idx = chip->engine_idx;
 static const u8 mask[] = {
  [130] = 133,
  [129] = 132,
  [128] = 131,
 };

 lp55xx_update_bits(chip, LP5523_REG_OP_MODE, mask[idx], 0);

 lp5523_wait_opmode_done();
}
