
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inv_mpu6050_state {int lock; int irq_mask; TYPE_1__* reg; int map; } ;
struct iio_dev {int dummy; } ;
struct i2c_mux_core {int dummy; } ;
struct TYPE_2__ {int int_pin_cfg; } ;


 struct iio_dev* i2c_mux_priv (struct i2c_mux_core*) ;
 struct inv_mpu6050_state* iio_priv (struct iio_dev*) ;
 int inv_mpu6050_set_power_itg (struct inv_mpu6050_state*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int inv_mpu6050_deselect_bypass(struct i2c_mux_core *muxc, u32 chan_id)
{
 struct iio_dev *indio_dev = i2c_mux_priv(muxc);
 struct inv_mpu6050_state *st = iio_priv(indio_dev);

 mutex_lock(&st->lock);


 regmap_write(st->map, st->reg->int_pin_cfg, st->irq_mask);
 inv_mpu6050_set_power_itg(st, 0);

 mutex_unlock(&st->lock);

 return 0;
}
