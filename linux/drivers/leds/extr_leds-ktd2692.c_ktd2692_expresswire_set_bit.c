
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktd2692_context {int ctrl_gpio; } ;


 int KTD2692_HIGH ;
 int KTD2692_LOW ;
 int KTD2692_TIME_LONG_BITSET_US ;
 int KTD2692_TIME_SHORT_BITSET_US ;
 int gpiod_direction_output (int ,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void ktd2692_expresswire_set_bit(struct ktd2692_context *led, bool bit)
{
 if (bit) {
  gpiod_direction_output(led->ctrl_gpio, KTD2692_LOW);
  udelay(KTD2692_TIME_SHORT_BITSET_US);
  gpiod_direction_output(led->ctrl_gpio, KTD2692_HIGH);
  udelay(KTD2692_TIME_LONG_BITSET_US);
 } else {
  gpiod_direction_output(led->ctrl_gpio, KTD2692_LOW);
  udelay(KTD2692_TIME_LONG_BITSET_US);
  gpiod_direction_output(led->ctrl_gpio, KTD2692_HIGH);
  udelay(KTD2692_TIME_SHORT_BITSET_US);
 }
}
