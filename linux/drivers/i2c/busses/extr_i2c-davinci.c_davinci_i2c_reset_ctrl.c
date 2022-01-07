
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct davinci_i2c_dev {int dummy; } ;


 int DAVINCI_I2C_MDR_IRS ;
 int DAVINCI_I2C_MDR_REG ;
 int davinci_i2c_read_reg (struct davinci_i2c_dev*,int ) ;
 int davinci_i2c_write_reg (struct davinci_i2c_dev*,int ,int ) ;

__attribute__((used)) static inline void davinci_i2c_reset_ctrl(struct davinci_i2c_dev *i2c_dev,
        int val)
{
 u16 w;

 w = davinci_i2c_read_reg(i2c_dev, DAVINCI_I2C_MDR_REG);
 if (!val)
  w &= ~DAVINCI_I2C_MDR_IRS;
 else
  w |= DAVINCI_I2C_MDR_IRS;

 davinci_i2c_write_reg(i2c_dev, DAVINCI_I2C_MDR_REG, w);
}
