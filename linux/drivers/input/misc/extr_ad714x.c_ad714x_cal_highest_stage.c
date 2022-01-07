
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad714x_chip {int* sensor_val; } ;



__attribute__((used)) static int ad714x_cal_highest_stage(struct ad714x_chip *ad714x,
     int start_stage, int end_stage)
{
 int max_res = 0;
 int max_idx = 0;
 int i;

 for (i = start_stage; i <= end_stage; i++) {
  if (ad714x->sensor_val[i] > max_res) {
   max_res = ad714x->sensor_val[i];
   max_idx = i;
  }
 }

 return max_idx;
}
