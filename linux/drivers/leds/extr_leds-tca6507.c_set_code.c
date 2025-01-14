
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tca6507_chip {int* reg_file; int reg_set; } ;



__attribute__((used)) static void set_code(struct tca6507_chip *tca, int reg, int bank, int new)
{
 int mask = 0xF;
 int n;
 if (bank) {
  mask <<= 4;
  new <<= 4;
 }
 n = tca->reg_file[reg] & ~mask;
 n |= new;
 if (tca->reg_file[reg] != n) {
  tca->reg_file[reg] = n;
  tca->reg_set |= 1 << reg;
 }
}
