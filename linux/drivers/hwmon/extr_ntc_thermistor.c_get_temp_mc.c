
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntc_data {TYPE_1__* comp; } ;
struct TYPE_2__ {int temp_c; scalar_t__ ohm; } ;


 int lookup_comp (struct ntc_data*,unsigned int,int*,int*) ;

__attribute__((used)) static int get_temp_mc(struct ntc_data *data, unsigned int ohm)
{
 int low, high;
 int temp;

 lookup_comp(data, ohm, &low, &high);
 if (low == high) {

  temp = data->comp[low].temp_c * 1000;
 } else {
  temp = data->comp[low].temp_c * 1000 +
   ((data->comp[high].temp_c - data->comp[low].temp_c) *
    1000 * ((int)ohm - (int)data->comp[low].ohm)) /
   ((int)data->comp[high].ohm - (int)data->comp[low].ohm);
 }
 return temp;
}
