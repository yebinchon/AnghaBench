
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bmp280_calib {int H4; int H5; int H6; int H2; scalar_t__ H1; scalar_t__ H3; } ;
struct TYPE_2__ {struct bmp280_calib bmp280; } ;
struct bmp280_data {scalar_t__ t_fine; TYPE_1__ calib; } ;
typedef int s32 ;



__attribute__((used)) static u32 bmp280_compensate_humidity(struct bmp280_data *data,
          s32 adc_humidity)
{
 s32 var;
 struct bmp280_calib *calib = &data->calib.bmp280;

 var = ((s32)data->t_fine) - (s32)76800;
 var = ((((adc_humidity << 14) - (calib->H4 << 20) - (calib->H5 * var))
  + (s32)16384) >> 15) * (((((((var * calib->H6) >> 10)
  * (((var * (s32)calib->H3) >> 11) + (s32)32768)) >> 10)
  + (s32)2097152) * calib->H2 + 8192) >> 14);
 var -= ((((var >> 15) * (var >> 15)) >> 7) * (s32)calib->H1) >> 4;

 return var >> 12;
}
