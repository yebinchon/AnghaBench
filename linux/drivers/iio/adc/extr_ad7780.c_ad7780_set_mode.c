
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad_sigma_delta {int dummy; } ;
struct ad7780_state {int powerdown_gpio; } ;
typedef enum ad_sigma_delta_mode { ____Placeholder_ad_sigma_delta_mode } ad_sigma_delta_mode ;




 struct ad7780_state* ad_sigma_delta_to_ad7780 (struct ad_sigma_delta*) ;
 int gpiod_set_value (int ,unsigned int) ;

__attribute__((used)) static int ad7780_set_mode(struct ad_sigma_delta *sigma_delta,
      enum ad_sigma_delta_mode mode)
{
 struct ad7780_state *st = ad_sigma_delta_to_ad7780(sigma_delta);
 unsigned int val;

 switch (mode) {
 case 128:
 case 129:
  val = 1;
  break;
 default:
  val = 0;
  break;
 }

 gpiod_set_value(st->powerdown_gpio, val);

 return 0;
}
