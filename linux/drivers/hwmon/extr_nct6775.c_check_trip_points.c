
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct6775_data {int auto_pwm_num; scalar_t__** auto_temp; scalar_t__** auto_pwm; } ;


 int EINVAL ;

__attribute__((used)) static int check_trip_points(struct nct6775_data *data, int nr)
{
 int i;

 for (i = 0; i < data->auto_pwm_num - 1; i++) {
  if (data->auto_temp[nr][i] > data->auto_temp[nr][i + 1])
   return -EINVAL;
 }
 for (i = 0; i < data->auto_pwm_num - 1; i++) {
  if (data->auto_pwm[nr][i] > data->auto_pwm[nr][i + 1])
   return -EINVAL;
 }

 if (data->auto_pwm[nr][data->auto_pwm_num]) {
  if (data->auto_temp[nr][data->auto_pwm_num - 1] >
    data->auto_temp[nr][data->auto_pwm_num] ||
      data->auto_pwm[nr][data->auto_pwm_num - 1] >
    data->auto_pwm[nr][data->auto_pwm_num])
   return -EINVAL;
 }
 return 0;
}
