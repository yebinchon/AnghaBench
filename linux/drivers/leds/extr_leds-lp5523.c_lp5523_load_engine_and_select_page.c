
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp55xx_chip {int engine_idx; } ;
typedef enum lp55xx_engine_index { ____Placeholder_lp55xx_engine_index } lp55xx_engine_index ;





 int LP5523_REG_PROG_PAGE_SEL ;



 int lp5523_load_engine (struct lp55xx_chip*) ;
 int lp55xx_write (struct lp55xx_chip*,int ,int const) ;

__attribute__((used)) static void lp5523_load_engine_and_select_page(struct lp55xx_chip *chip)
{
 enum lp55xx_engine_index idx = chip->engine_idx;
 static const u8 page_sel[] = {
  [130] = 133,
  [129] = 132,
  [128] = 131,
 };

 lp5523_load_engine(chip);

 lp55xx_write(chip, LP5523_REG_PROG_PAGE_SEL, page_sel[idx]);
}
