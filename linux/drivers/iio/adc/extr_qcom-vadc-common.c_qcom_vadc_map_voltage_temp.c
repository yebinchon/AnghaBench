
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vadc_map_pt {scalar_t__ x; int y; } ;
typedef scalar_t__ s32 ;


 int EINVAL ;

__attribute__((used)) static int qcom_vadc_map_voltage_temp(const struct vadc_map_pt *pts,
          u32 tablesize, s32 input, int *output)
{
 bool descending = 1;
 u32 i = 0;

 if (!pts)
  return -EINVAL;


 if (tablesize > 1) {
  if (pts[0].x < pts[1].x)
   descending = 0;
 }

 while (i < tablesize) {
  if ((descending) && (pts[i].x < input)) {


   break;
  } else if ((!descending) &&
    (pts[i].x > input)) {


   break;
  }
  i++;
 }

 if (i == 0) {
  *output = pts[0].y;
 } else if (i == tablesize) {
  *output = pts[tablesize - 1].y;
 } else {


  *output = (((s32)((pts[i].y - pts[i - 1].y) *
   (input - pts[i - 1].x)) /
   (pts[i].x - pts[i - 1].x)) +
   pts[i - 1].y);
 }

 return 0;
}
