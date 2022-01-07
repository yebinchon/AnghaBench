
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_pnx_algo_data {long timeout; } ;


 int I2C_REG_STS (struct i2c_pnx_algo_data*) ;
 int ioread32 (int ) ;
 int mdelay (int) ;
 int mstatus_active ;

__attribute__((used)) static inline int wait_timeout(struct i2c_pnx_algo_data *data)
{
 long timeout = data->timeout;
 while (timeout > 0 &&
   (ioread32(I2C_REG_STS(data)) & mstatus_active)) {
  mdelay(1);
  timeout--;
 }
 return (timeout <= 0);
}
