
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2772_chip {int dummy; } ;


 int tsl2772_read_prox_diodes (struct tsl2772_chip*) ;
 int tsl2772_read_prox_led_current (struct tsl2772_chip*) ;

__attribute__((used)) static void tsl2772_parse_dt(struct tsl2772_chip *chip)
{
 tsl2772_read_prox_led_current(chip);
 tsl2772_read_prox_diodes(chip);
}
