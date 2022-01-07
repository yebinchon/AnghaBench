
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lm3533_led {int dummy; } ;


 int LM3533_REG_PATTERN_STEP ;
 int lm3533_led_get_pattern (struct lm3533_led*) ;

__attribute__((used)) static inline u8 lm3533_led_get_pattern_reg(struct lm3533_led *led,
        u8 base)
{
 return base + lm3533_led_get_pattern(led) * LM3533_REG_PATTERN_STEP;
}
