
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 scalar_t__ LP3944_DIM0 ;
 scalar_t__ LP3944_DIM1 ;
 int LP3944_PERIOD_MAX ;
 scalar_t__ LP3944_REG_PSC0 ;
 scalar_t__ LP3944_REG_PSC1 ;
 int lp3944_reg_write (struct i2c_client*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int lp3944_dim_set_period(struct i2c_client *client, u8 dim, u16 period)
{
 u8 psc_reg;
 u8 psc_value;
 int err;

 if (dim == LP3944_DIM0)
  psc_reg = LP3944_REG_PSC0;
 else if (dim == LP3944_DIM1)
  psc_reg = LP3944_REG_PSC1;
 else
  return -EINVAL;


 if (period > LP3944_PERIOD_MAX)
  return -EINVAL;

 psc_value = (period * 255) / LP3944_PERIOD_MAX;

 err = lp3944_reg_write(client, psc_reg, psc_value);

 return err;
}
