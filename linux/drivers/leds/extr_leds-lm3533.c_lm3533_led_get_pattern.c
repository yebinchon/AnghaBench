
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_led {int id; } ;



__attribute__((used)) static inline u8 lm3533_led_get_pattern(struct lm3533_led *led)
{
 return led->id;
}
