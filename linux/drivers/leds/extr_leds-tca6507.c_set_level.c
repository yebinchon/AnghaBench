
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tca6507_chip {TYPE_1__* bank; } ;
struct TYPE_2__ {int level; } ;





 int TCA6507_MASTER_INTENSITY ;
 int TCA6507_MAX_INTENSITY ;
 int set_code (struct tca6507_chip*,int ,int,int) ;

__attribute__((used)) static void set_level(struct tca6507_chip *tca, int bank, int level)
{
 switch (bank) {
 case 130:
 case 129:
  set_code(tca, TCA6507_MAX_INTENSITY, bank, level);
  break;
 case 128:
  set_code(tca, TCA6507_MASTER_INTENSITY, 0, level);
  break;
 }
 tca->bank[bank].level = level;
}
