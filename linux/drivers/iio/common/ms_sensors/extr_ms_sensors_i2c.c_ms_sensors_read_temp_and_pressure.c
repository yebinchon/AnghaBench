
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int u16 ;
struct ms_tp_dev {int* prom; size_t res_index; int lock; int client; } ;
typedef int s64 ;
typedef int s32 ;


 int MS_SENSORS_TP_ADC_READ ;
 scalar_t__ MS_SENSORS_TP_P_CONVERSION_START ;
 scalar_t__ MS_SENSORS_TP_T_CONVERSION_START ;
 int ms_sensors_convert_and_read (int ,scalar_t__,int ,int,unsigned int*) ;
 int* ms_sensors_tp_conversion_time ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ms_sensors_read_temp_and_pressure(struct ms_tp_dev *dev_data,
          int *temperature,
          unsigned int *pressure)
{
 int ret;
 u32 t_adc, p_adc;
 s32 dt, temp;
 s64 off, sens, t2, off2, sens2;
 u16 *prom = dev_data->prom, delay;

 mutex_lock(&dev_data->lock);
 delay = ms_sensors_tp_conversion_time[dev_data->res_index];

 ret = ms_sensors_convert_and_read(
     dev_data->client,
     MS_SENSORS_TP_T_CONVERSION_START +
      dev_data->res_index * 2,
     MS_SENSORS_TP_ADC_READ,
     delay, &t_adc);
 if (ret) {
  mutex_unlock(&dev_data->lock);
  return ret;
 }

 ret = ms_sensors_convert_and_read(
     dev_data->client,
     MS_SENSORS_TP_P_CONVERSION_START +
      dev_data->res_index * 2,
     MS_SENSORS_TP_ADC_READ,
     delay, &p_adc);
 mutex_unlock(&dev_data->lock);
 if (ret)
  return ret;

 dt = (s32)t_adc - (prom[5] << 8);


 temp = 2000 + (((s64)dt * prom[6]) >> 23);


 if (temp < 2000) {
  s64 tmp = (s64)temp - 2000;

  t2 = (3 * ((s64)dt * (s64)dt)) >> 33;
  off2 = (61 * tmp * tmp) >> 4;
  sens2 = (29 * tmp * tmp) >> 4;

  if (temp < -1500) {
   s64 tmp = (s64)temp + 1500;

   off2 += 17 * tmp * tmp;
   sens2 += 9 * tmp * tmp;
  }
 } else {
  t2 = (5 * ((s64)dt * (s64)dt)) >> 38;
  off2 = 0;
  sens2 = 0;
 }


 off = (((s64)prom[2]) << 17) + ((((s64)prom[4]) * (s64)dt) >> 6);
 off -= off2;


 sens = (((s64)prom[1]) << 16) + (((s64)prom[3] * dt) >> 7);
 sens -= sens2;


 *temperature = (temp - t2) * 10;
 *pressure = (u32)(((((s64)p_adc * sens) >> 21) - off) >> 15);

 return 0;
}
