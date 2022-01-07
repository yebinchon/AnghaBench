
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int INTEL_MSIC_GPIO0HV0CTLO ;
 int INTEL_MSIC_GPIO0LV0CTLO ;
 unsigned int INTEL_MSIC_GPIO1HV0CTLO ;
 unsigned int INTEL_MSIC_GPIO1LV0CTLO ;
 unsigned int MSIC_NUM_GPIO ;

__attribute__((used)) static int msic_gpio_to_oreg(unsigned offset)
{
 if (offset >= MSIC_NUM_GPIO)
  return -EINVAL;

 if (offset < 8)
  return INTEL_MSIC_GPIO0LV0CTLO - offset;
 if (offset < 16)
  return INTEL_MSIC_GPIO1LV0CTLO - offset + 8;
 if (offset < 20)
  return INTEL_MSIC_GPIO0HV0CTLO - offset + 16;

 return INTEL_MSIC_GPIO1HV0CTLO - offset + 20;
}
