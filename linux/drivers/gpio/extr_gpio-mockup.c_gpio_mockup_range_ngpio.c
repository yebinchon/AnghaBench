
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* gpio_mockup_ranges ;

__attribute__((used)) static int gpio_mockup_range_ngpio(unsigned int index)
{
 return gpio_mockup_ranges[index * 2 + 1];
}
