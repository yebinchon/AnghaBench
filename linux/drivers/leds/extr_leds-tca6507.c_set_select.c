
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tca6507_chip {int* reg_file; int reg_set; } ;



__attribute__((used)) static void set_select(struct tca6507_chip *tca, int led, int val)
{
 int mask = (1 << led);
 int bit;

 for (bit = 0; bit < 3; bit++) {
  int n = tca->reg_file[bit] & ~mask;
  if (val & (1 << bit))
   n |= mask;
  if (tca->reg_file[bit] != n) {
   tca->reg_file[bit] = n;
   tca->reg_set |= (1 << bit);
  }
 }
}
