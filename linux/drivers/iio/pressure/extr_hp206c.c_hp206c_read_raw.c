
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct hp206c_osr_setting {int osr_mask; int pres_conv_time_us; int temp_conv_time_us; } ;
struct hp206c_data {size_t temp_osr_index; size_t pres_osr_index; int mutex; } ;


 int EINVAL ;
 int HP206C_CMD_ADC_CVT ;
 int HP206C_CMD_ADC_CVT_CHNL_PT ;
 int HP206C_CMD_ADC_CVT_CHNL_T ;
 int HP206C_CMD_READ_P ;
 int HP206C_CMD_READ_T ;





 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int hp206c_conv_and_read (struct iio_dev*,int,int ,int ) ;
 int* hp206c_osr_rates ;
 struct hp206c_osr_setting* hp206c_osr_settings ;
 struct hp206c_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int hp206c_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan, int *val,
      int *val2, long mask)
{
 int ret;
 struct hp206c_data *data = iio_priv(indio_dev);
 const struct hp206c_osr_setting *osr_setting;
 u8 conv_cmd;

 mutex_lock(&data->mutex);

 switch (mask) {
 case 132:
  switch (chan->type) {
  case 128:
   *val = hp206c_osr_rates[data->temp_osr_index];
   ret = IIO_VAL_INT;
   break;

  case 129:
   *val = hp206c_osr_rates[data->pres_osr_index];
   ret = IIO_VAL_INT;
   break;
  default:
   ret = -EINVAL;
  }
  break;

 case 131:
  switch (chan->type) {
  case 128:
   osr_setting = &hp206c_osr_settings[data->temp_osr_index];
   conv_cmd = HP206C_CMD_ADC_CVT |
     osr_setting->osr_mask |
     HP206C_CMD_ADC_CVT_CHNL_T;
   ret = hp206c_conv_and_read(indio_dev,
     conv_cmd,
     HP206C_CMD_READ_T,
     osr_setting->temp_conv_time_us);
   if (ret >= 0) {



    *val = sign_extend32(ret, 19);
    ret = IIO_VAL_INT;
   }
   break;

  case 129:
   osr_setting = &hp206c_osr_settings[data->pres_osr_index];
   conv_cmd = HP206C_CMD_ADC_CVT |
     osr_setting->osr_mask |
     HP206C_CMD_ADC_CVT_CHNL_PT;
   ret = hp206c_conv_and_read(indio_dev,
     conv_cmd,
     HP206C_CMD_READ_P,
     osr_setting->pres_conv_time_us);
   if (ret >= 0) {
    *val = ret;
    ret = IIO_VAL_INT;
   }
   break;
  default:
   ret = -EINVAL;
  }
  break;

 case 130:
  switch (chan->type) {
  case 128:
   *val = 0;
   *val2 = 10000;
   ret = IIO_VAL_INT_PLUS_MICRO;
   break;

  case 129:
   *val = 0;
   *val2 = 1000;
   ret = IIO_VAL_INT_PLUS_MICRO;
   break;
  default:
   ret = -EINVAL;
  }
  break;

 default:
  ret = -EINVAL;
 }

 mutex_unlock(&data->mutex);
 return ret;
}
