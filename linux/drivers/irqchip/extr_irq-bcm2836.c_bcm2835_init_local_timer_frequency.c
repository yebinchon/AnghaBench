
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ LOCAL_CONTROL ;
 scalar_t__ LOCAL_PRESCALER ;
 TYPE_1__ intc ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bcm2835_init_local_timer_frequency(void)
{





 writel(0, intc.base + LOCAL_CONTROL);





 writel(0x80000000, intc.base + LOCAL_PRESCALER);
}
