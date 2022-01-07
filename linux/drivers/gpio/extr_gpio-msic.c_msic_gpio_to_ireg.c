
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int INTEL_MSIC_GPIO0HV0CTLI ;
 int INTEL_MSIC_GPIO0LV0CTLI ;
 unsigned int INTEL_MSIC_GPIO1HV0CTLI ;
 unsigned int INTEL_MSIC_GPIO1LV0CTLI ;
 unsigned int MSIC_NUM_GPIO ;

__attribute__((used)) static int msic_gpio_to_ireg(unsigned offset)
{
 if (offset >= MSIC_NUM_GPIO)
  return -EINVAL;

 if (offset < 8)
  return INTEL_MSIC_GPIO0LV0CTLI - offset;
 if (offset < 16)
  return INTEL_MSIC_GPIO1LV0CTLI - offset + 8;
 if (offset < 20)
  return INTEL_MSIC_GPIO0HV0CTLI - offset + 16;

 return INTEL_MSIC_GPIO1HV0CTLI - offset + 20;
}
