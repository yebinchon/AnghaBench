
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {int complete; int ret; } ;
struct TYPE_5__ {int dev; } ;
struct i2c_pnx_algo_data {TYPE_1__ mif; TYPE_2__ adapter; } ;
struct TYPE_6__ {int timer; } ;


 int EIO ;
 int I2C_REG_CTL (struct i2c_pnx_algo_data*) ;
 int I2C_REG_STS (struct i2c_pnx_algo_data*) ;
 struct i2c_pnx_algo_data* alg_data ;
 int complete (int *) ;
 int dev_err (int *,char*,int,int) ;
 struct i2c_pnx_algo_data* from_timer (int ,struct timer_list*,int ) ;
 int ioread32 (int ) ;
 int iowrite32 (int,int ) ;
 int mcntrl_afie ;
 int mcntrl_drmie ;
 int mcntrl_naie ;
 int mcntrl_reset ;
 int mcntrl_rffie ;
 TYPE_3__ mif ;
 int wait_reset (struct i2c_pnx_algo_data*) ;

__attribute__((used)) static void i2c_pnx_timeout(struct timer_list *t)
{
 struct i2c_pnx_algo_data *alg_data = from_timer(alg_data, t, mif.timer);
 u32 ctl;

 dev_err(&alg_data->adapter.dev,
  "Master timed out. stat = %04x, cntrl = %04x. Resetting master...\n",
  ioread32(I2C_REG_STS(alg_data)),
  ioread32(I2C_REG_CTL(alg_data)));


 ctl = ioread32(I2C_REG_CTL(alg_data));
 ctl &= ~(mcntrl_afie | mcntrl_naie | mcntrl_rffie | mcntrl_drmie);
 iowrite32(ctl, I2C_REG_CTL(alg_data));

 ctl |= mcntrl_reset;
 iowrite32(ctl, I2C_REG_CTL(alg_data));
 wait_reset(alg_data);
 alg_data->mif.ret = -EIO;
 complete(&alg_data->mif.complete);
}
