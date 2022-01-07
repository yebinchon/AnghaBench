
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3533_led {int dummy; } ;


 int LM3533_REG_PATTERN_HIGH_TIME_BASE ;
 int lm3533_led_delay_set (struct lm3533_led*,int ,unsigned long*) ;

__attribute__((used)) static int lm3533_led_delay_on_set(struct lm3533_led *led, unsigned long *t)
{
 return lm3533_led_delay_set(led, LM3533_REG_PATTERN_HIGH_TIME_BASE, t);
}
