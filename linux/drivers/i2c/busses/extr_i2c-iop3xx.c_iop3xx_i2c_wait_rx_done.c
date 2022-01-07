
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_iop3xx_data {int dummy; } ;


 int IOP3XX_ISR_ALD ;
 int IOP3XX_ISR_BERRD ;
 int IOP3XX_ISR_RXFULL ;
 int any_bits_set ;
 int iop3xx_i2c_wait_event (struct i2c_algo_iop3xx_data*,int,int*,int ) ;

__attribute__((used)) static int
iop3xx_i2c_wait_rx_done(struct i2c_algo_iop3xx_data *iop3xx_adap, int *status)
{
 return iop3xx_i2c_wait_event(
  iop3xx_adap,
  IOP3XX_ISR_RXFULL | IOP3XX_ISR_ALD | IOP3XX_ISR_BERRD,
  status, any_bits_set);
}
