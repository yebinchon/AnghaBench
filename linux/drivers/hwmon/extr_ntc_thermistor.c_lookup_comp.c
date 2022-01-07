
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntc_data {int n_comp; TYPE_1__* comp; } ;
struct TYPE_2__ {unsigned int ohm; } ;



__attribute__((used)) static void lookup_comp(struct ntc_data *data, unsigned int ohm,
   int *i_low, int *i_high)
{
 int start, end, mid;
 if (ohm >= data->comp[0].ohm) {
  *i_low = 0;
  *i_high = 0;
  return;
 }
 if (ohm <= data->comp[data->n_comp - 1].ohm) {
  *i_low = data->n_comp - 1;
  *i_high = data->n_comp - 1;
  return;
 }


 start = 0;
 end = data->n_comp;
 while (start < end) {
  mid = start + (end - start) / 2;
  if (ohm >= data->comp[mid].ohm) {
   end = mid;
  } else {
   start = mid + 1;






   if (ohm >= data->comp[start].ohm)
    end = start;
  }




 }




 *i_low = end;
 if (ohm == data->comp[end].ohm)
  *i_high = end;
 else
  *i_high = end - 1;
}
