
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad5449 {TYPE_1__* chip_info; } ;
struct TYPE_2__ {int num_channels; } ;



__attribute__((used)) static const char *ad5449_vref_name(struct ad5449 *st, int n)
{
 if (st->chip_info->num_channels == 1)
  return "VREF";

 if (n == 0)
  return "VREFA";
 else
  return "VREFB";
}
