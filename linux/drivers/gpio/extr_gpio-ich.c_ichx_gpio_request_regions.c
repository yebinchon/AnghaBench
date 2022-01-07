
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct resource {scalar_t__ start; int end; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* desc; } ;
struct TYPE_3__ {int * reglen; scalar_t__** regs; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int BIT (int) ;
 int EBUSY ;
 int ENODEV ;
 int devm_request_region (struct device*,scalar_t__,int ,char const*) ;
 TYPE_2__ ichx_priv ;

__attribute__((used)) static int ichx_gpio_request_regions(struct device *dev,
 struct resource *res_base, const char *name, u8 use_gpio)
{
 int i;

 if (!res_base || !res_base->start || !res_base->end)
  return -ENODEV;

 for (i = 0; i < ARRAY_SIZE(ichx_priv.desc->regs[0]); i++) {
  if (!(use_gpio & BIT(i)))
   continue;
  if (!devm_request_region(dev,
    res_base->start + ichx_priv.desc->regs[0][i],
    ichx_priv.desc->reglen[i], name))
   return -EBUSY;
 }
 return 0;
}
