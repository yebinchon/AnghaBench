
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bme680_calib {int par_t2; int par_t1; int par_t3; } ;
struct bme680_data {int t_fine; struct bme680_calib bme680; } ;
typedef int s64 ;
typedef int s32 ;
typedef int s16 ;


 int bme680_read_calib (struct bme680_data*,struct bme680_calib*) ;

__attribute__((used)) static s16 bme680_compensate_temp(struct bme680_data *data,
      s32 adc_temp)
{
 struct bme680_calib *calib = &data->bme680;
 s64 var1, var2, var3;
 s16 calc_temp;


 if (!calib->par_t2)
  bme680_read_calib(data, calib);

 var1 = (adc_temp >> 3) - (calib->par_t1 << 1);
 var2 = (var1 * calib->par_t2) >> 11;
 var3 = ((var1 >> 1) * (var1 >> 1)) >> 12;
 var3 = (var3 * (calib->par_t3 << 4)) >> 14;
 data->t_fine = var2 + var3;
 calc_temp = (data->t_fine * 5 + 128) >> 8;

 return calc_temp;
}
