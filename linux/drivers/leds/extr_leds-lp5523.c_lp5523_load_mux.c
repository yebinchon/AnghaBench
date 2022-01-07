
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u16 ;
struct lp55xx_engine {int led_mux; } ;
struct lp55xx_chip {struct lp55xx_engine* engines; } ;





 scalar_t__ LP5523_REG_PROG_MEM ;
 scalar_t__ LP5523_REG_PROG_PAGE_SEL ;



 int lp5523_load_engine (struct lp55xx_chip*) ;
 int lp55xx_write (struct lp55xx_chip*,scalar_t__,int const) ;

__attribute__((used)) static int lp5523_load_mux(struct lp55xx_chip *chip, u16 mux, int nr)
{
 struct lp55xx_engine *engine = &chip->engines[nr - 1];
 int ret;
 static const u8 mux_page[] = {
  [130] = 133,
  [129] = 132,
  [128] = 131,
 };

 lp5523_load_engine(chip);

 ret = lp55xx_write(chip, LP5523_REG_PROG_PAGE_SEL, mux_page[nr]);
 if (ret)
  return ret;

 ret = lp55xx_write(chip, LP5523_REG_PROG_MEM , (u8)(mux >> 8));
 if (ret)
  return ret;

 ret = lp55xx_write(chip, LP5523_REG_PROG_MEM + 1, (u8)(mux));
 if (ret)
  return ret;

 engine->led_mux = mux;
 return 0;
}
