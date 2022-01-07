
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ num; scalar_t__ den; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* vadc_prescale_ratios ;

__attribute__((used)) static int vadc_prescaling_from_dt(u32 num, u32 den)
{
 unsigned int pre;

 for (pre = 0; pre < ARRAY_SIZE(vadc_prescale_ratios); pre++)
  if (vadc_prescale_ratios[pre].num == num &&
      vadc_prescale_ratios[pre].den == den)
   break;

 if (pre == ARRAY_SIZE(vadc_prescale_ratios))
  return -EINVAL;

 return pre;
}
