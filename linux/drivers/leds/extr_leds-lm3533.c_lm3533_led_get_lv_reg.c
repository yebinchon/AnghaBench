
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lm3533_led {scalar_t__ id; } ;



__attribute__((used)) static inline u8 lm3533_led_get_lv_reg(struct lm3533_led *led, u8 base)
{
 return base + led->id;
}
