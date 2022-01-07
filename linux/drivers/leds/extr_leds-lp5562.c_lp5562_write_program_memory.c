
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lp55xx_chip {int dummy; } ;


 int lp55xx_write (struct lp55xx_chip*,scalar_t__,scalar_t__ const) ;

__attribute__((used)) static void lp5562_write_program_memory(struct lp55xx_chip *chip,
     u8 base, const u8 *rgb, int size)
{
 int i;

 if (!rgb || size <= 0)
  return;

 for (i = 0; i < size; i++)
  lp55xx_write(chip, base + i, *(rgb + i));

 lp55xx_write(chip, base + i, 0);
 lp55xx_write(chip, base + i + 1, 0);
}
