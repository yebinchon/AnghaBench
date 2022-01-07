
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct led_flash_setting {int val; int step; int min; int max; } ;


 int clamp (int,int,int ) ;

__attribute__((used)) static void led_clamp_align(struct led_flash_setting *s)
{
 u32 v, offset;

 v = s->val + s->step / 2;
 v = clamp(v, s->min, s->max);
 offset = v - s->min;
 offset = s->step * (offset / s->step);
 s->val = s->min + offset;
}
