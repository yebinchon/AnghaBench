
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad714x_chip {int* sensor_val; } ;



__attribute__((used)) static int ad714x_cal_abs_pos(struct ad714x_chip *ad714x,
    int start_stage, int end_stage,
    int highest_stage, int max_coord)
{
 int a_param, b_param;

 if (highest_stage == start_stage) {
  a_param = ad714x->sensor_val[start_stage + 1];
  b_param = ad714x->sensor_val[start_stage] +
   ad714x->sensor_val[start_stage + 1];
 } else if (highest_stage == end_stage) {
  a_param = ad714x->sensor_val[end_stage] *
   (end_stage - start_stage) +
   ad714x->sensor_val[end_stage - 1] *
   (end_stage - start_stage - 1);
  b_param = ad714x->sensor_val[end_stage] +
   ad714x->sensor_val[end_stage - 1];
 } else {
  a_param = ad714x->sensor_val[highest_stage] *
   (highest_stage - start_stage) +
   ad714x->sensor_val[highest_stage - 1] *
   (highest_stage - start_stage - 1) +
   ad714x->sensor_val[highest_stage + 1] *
   (highest_stage - start_stage + 1);
  b_param = ad714x->sensor_val[highest_stage] +
   ad714x->sensor_val[highest_stage - 1] +
   ad714x->sensor_val[highest_stage + 1];
 }

 return (max_coord / (end_stage - start_stage)) * a_param / b_param;
}
