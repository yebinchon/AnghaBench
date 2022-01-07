
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht15_data {int val_status; int val_humid; } ;


 int SHT15_STATUS_LOW_RESOLUTION ;
 int sht15_calc_temp (struct sht15_data*) ;

__attribute__((used)) static inline int sht15_calc_humid(struct sht15_data *data)
{
 int rh_linear;
 int temp = sht15_calc_temp(data);
 int c2, c3;
 int t2;
 const int c1 = -4;

 if (data->val_status & SHT15_STATUS_LOW_RESOLUTION) {
  c2 = 648000;
  c3 = -7200;
  t2 = 1280;
 } else {
  c2 = 40500;
  c3 = -28;
  t2 = 80;
 }

 rh_linear = c1 * 1000
  + c2 * data->val_humid / 1000
  + (data->val_humid * data->val_humid * c3) / 10000;
 return (temp - 25000) * (10000 + t2 * data->val_humid)
  / 1000000 + rh_linear;
}
