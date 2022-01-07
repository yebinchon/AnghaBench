
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ASPEED_I2CD_INTR_ABNORMAL ;
 int ASPEED_I2CD_INTR_ARBIT_LOSS ;
 int ASPEED_I2CD_INTR_SCL_TIMEOUT ;
 int ASPEED_I2CD_INTR_SDA_DL_TIMEOUT ;
 int EAGAIN ;
 int EBUSY ;
 int EPROTO ;

__attribute__((used)) static int aspeed_i2c_is_irq_error(u32 irq_status)
{
 if (irq_status & ASPEED_I2CD_INTR_ARBIT_LOSS)
  return -EAGAIN;
 if (irq_status & (ASPEED_I2CD_INTR_SDA_DL_TIMEOUT |
     ASPEED_I2CD_INTR_SCL_TIMEOUT))
  return -EBUSY;
 if (irq_status & (ASPEED_I2CD_INTR_ABNORMAL))
  return -EPROTO;

 return 0;
}
