
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2772_chip {int id; int prox_data; int prox_mutex; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 int TSL2772_PRX_HI ;
 int TSL2772_PRX_LO ;
 int TSL2772_STA_ADC_VALID ;
 int TSL2772_STA_PRX_VALID ;

 struct tsl2772_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tsl2772_read_autoinc_regs (struct tsl2772_chip*,int ,int ) ;
 int tsl2772_read_status (struct tsl2772_chip*) ;

__attribute__((used)) static int tsl2772_get_prox(struct iio_dev *indio_dev)
{
 struct tsl2772_chip *chip = iio_priv(indio_dev);
 int ret;

 mutex_lock(&chip->prox_mutex);

 ret = tsl2772_read_status(chip);
 if (ret < 0)
  goto prox_poll_err;

 switch (chip->id) {
 case 133:
 case 131:
 case 137:
 case 129:
 case 135:
  if (!(ret & TSL2772_STA_ADC_VALID)) {
   ret = -EINVAL;
   goto prox_poll_err;
  }
  break;
 case 132:
 case 130:
 case 136:
 case 128:
 case 134:
 case 138:
  if (!(ret & TSL2772_STA_PRX_VALID)) {
   ret = -EINVAL;
   goto prox_poll_err;
  }
  break;
 }

 ret = tsl2772_read_autoinc_regs(chip, TSL2772_PRX_LO, TSL2772_PRX_HI);
 if (ret < 0)
  goto prox_poll_err;
 chip->prox_data = ret;

prox_poll_err:
 mutex_unlock(&chip->prox_mutex);

 return ret;
}
