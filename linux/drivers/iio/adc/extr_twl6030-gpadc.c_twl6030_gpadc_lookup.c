
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6030_ideal_code {int channel; } ;



__attribute__((used)) static int twl6030_gpadc_lookup(const struct twl6030_ideal_code *ideal,
  int channel, int size)
{
 int i;

 for (i = 0; i < size; i++)
  if (ideal[i].channel == channel)
   break;

 return i;
}
