
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcnl4035_data {int regmap; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 int VCNL4035_ALS_CONF ;
 int VCNL4035_MODE_ALS_INT_DISABLE ;
 int VCNL4035_MODE_ALS_INT_ENABLE ;
 int VCNL4035_MODE_ALS_INT_MASK ;
 struct vcnl4035_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int vcnl4035_als_drdy_set_state(struct iio_trigger *trigger,
     bool enable_drdy)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trigger);
 struct vcnl4035_data *data = iio_priv(indio_dev);
 int val = enable_drdy ? VCNL4035_MODE_ALS_INT_ENABLE :
     VCNL4035_MODE_ALS_INT_DISABLE;

 return regmap_update_bits(data->regmap, VCNL4035_ALS_CONF,
     VCNL4035_MODE_ALS_INT_MASK,
     val);
}
