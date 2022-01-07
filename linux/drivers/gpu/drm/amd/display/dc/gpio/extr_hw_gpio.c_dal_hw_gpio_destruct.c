
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opened; } ;
struct hw_gpio {TYPE_1__ base; } ;


 int ASSERT (int) ;

void dal_hw_gpio_destruct(
 struct hw_gpio *pin)
{
 ASSERT(!pin->base.opened);
}
