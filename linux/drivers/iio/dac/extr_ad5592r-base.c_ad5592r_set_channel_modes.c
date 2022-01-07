
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iio_dev {int mlock; } ;
struct ad5592r_state {unsigned int num_channels; int* channel_modes; int gpio_map; int gpio_in; int gpio_out; int gpio_val; int * channel_offstate; struct ad5592r_rw_ops* ops; } ;
struct ad5592r_rw_ops {int (* reg_write ) (struct ad5592r_state*,int ,int) ;int (* reg_read ) (struct ad5592r_state*,int ,int*) ;} ;


 int AD5592R_REG_ADC_EN ;
 int AD5592R_REG_DAC_EN ;
 int AD5592R_REG_GPIO_IN_EN ;
 int AD5592R_REG_GPIO_OUT_EN ;
 int AD5592R_REG_GPIO_SET ;
 int AD5592R_REG_PULLDOWN ;
 int AD5592R_REG_TRISTATE ;
 int BIT (unsigned int) ;
 int EIO ;
 struct iio_dev* iio_priv_to_dev (struct ad5592r_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ad5592r_state*,int ,int) ;
 int stub2 (struct ad5592r_state*,int ,int) ;
 int stub3 (struct ad5592r_state*,int ,int) ;
 int stub4 (struct ad5592r_state*,int ,int) ;
 int stub5 (struct ad5592r_state*,int ,int) ;
 int stub6 (struct ad5592r_state*,int ,int) ;
 int stub7 (struct ad5592r_state*,int ,int) ;
 int stub8 (struct ad5592r_state*,int ,int*) ;

__attribute__((used)) static int ad5592r_set_channel_modes(struct ad5592r_state *st)
{
 const struct ad5592r_rw_ops *ops = st->ops;
 int ret;
 unsigned i;
 struct iio_dev *iio_dev = iio_priv_to_dev(st);
 u8 pulldown = 0, tristate = 0, dac = 0, adc = 0;
 u16 read_back;

 for (i = 0; i < st->num_channels; i++) {
  switch (st->channel_modes[i]) {
  case 135:
   dac |= BIT(i);
   break;

  case 136:
   adc |= BIT(i);
   break;

  case 134:
   dac |= BIT(i);
   adc |= BIT(i);
   break;

  case 133:
   st->gpio_map |= BIT(i);
   st->gpio_in |= BIT(i);
   break;

  case 132:

  default:
   switch (st->channel_offstate[i]) {
   case 129:
    tristate |= BIT(i);
    break;

   case 130:
    st->gpio_out |= BIT(i);
    break;

   case 131:
    st->gpio_out |= BIT(i);
    st->gpio_val |= BIT(i);
    break;

   case 128:

   default:
    pulldown |= BIT(i);
    break;
   }
  }
 }

 mutex_lock(&iio_dev->mlock);


 ret = ops->reg_write(st, AD5592R_REG_PULLDOWN, pulldown);
 if (ret)
  goto err_unlock;

 ret = ops->reg_write(st, AD5592R_REG_TRISTATE, tristate);
 if (ret)
  goto err_unlock;


 ret = ops->reg_write(st, AD5592R_REG_DAC_EN, dac);
 if (ret)
  goto err_unlock;

 ret = ops->reg_write(st, AD5592R_REG_ADC_EN, adc);
 if (ret)
  goto err_unlock;

 ret = ops->reg_write(st, AD5592R_REG_GPIO_SET, st->gpio_val);
 if (ret)
  goto err_unlock;

 ret = ops->reg_write(st, AD5592R_REG_GPIO_OUT_EN, st->gpio_out);
 if (ret)
  goto err_unlock;

 ret = ops->reg_write(st, AD5592R_REG_GPIO_IN_EN, st->gpio_in);
 if (ret)
  goto err_unlock;


 ret = ops->reg_read(st, AD5592R_REG_ADC_EN, &read_back);
 if (!ret && (read_back & 0xff) != adc)
  ret = -EIO;

err_unlock:
 mutex_unlock(&iio_dev->mlock);
 return ret;
}
