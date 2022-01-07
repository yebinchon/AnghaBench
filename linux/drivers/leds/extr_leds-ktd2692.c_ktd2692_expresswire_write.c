
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ktd2692_context {int dummy; } ;


 int BIT (int) ;
 int ktd2692_expresswire_end (struct ktd2692_context*) ;
 int ktd2692_expresswire_set_bit (struct ktd2692_context*,int) ;
 int ktd2692_expresswire_start (struct ktd2692_context*) ;

__attribute__((used)) static void ktd2692_expresswire_write(struct ktd2692_context *led, u8 value)
{
 int i;

 ktd2692_expresswire_start(led);
 for (i = 7; i >= 0; i--)
  ktd2692_expresswire_set_bit(led, value & BIT(i));
 ktd2692_expresswire_end(led);
}
