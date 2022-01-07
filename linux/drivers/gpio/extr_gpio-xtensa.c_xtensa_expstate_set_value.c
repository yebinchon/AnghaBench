
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int disable_cp (unsigned long,unsigned long) ;
 unsigned long enable_cp (unsigned long*) ;

__attribute__((used)) static void xtensa_expstate_set_value(struct gpio_chip *gc, unsigned offset,
         int value)
{
 unsigned long flags, saved_cpenable;
 u32 mask = BIT(offset);
 u32 val = value ? BIT(offset) : 0;

 flags = enable_cp(&saved_cpenable);
 __asm__ __volatile__("wrmsk_expstate %0, %1"
        :: "a" (val), "a" (mask));
 disable_cp(flags, saved_cpenable);
}
