
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {struct cdns_i2c* algo_data; } ;
struct cdns_i2c {int dummy; } ;


 int CDNS_I2C_CR_CLR_FIFO ;
 int CDNS_I2C_CR_HOLD ;
 int CDNS_I2C_CR_OFFSET ;
 int CDNS_I2C_IDR_OFFSET ;
 int CDNS_I2C_ISR_OFFSET ;
 int CDNS_I2C_IXR_ALL_INTR_MASK ;
 int CDNS_I2C_SR_OFFSET ;
 int CDNS_I2C_XFER_SIZE_OFFSET ;
 int cdns_i2c_readreg (int ) ;
 int cdns_i2c_writereg (int ,int ) ;

__attribute__((used)) static void cdns_i2c_master_reset(struct i2c_adapter *adap)
{
 struct cdns_i2c *id = adap->algo_data;
 u32 regval;


 cdns_i2c_writereg(CDNS_I2C_IXR_ALL_INTR_MASK, CDNS_I2C_IDR_OFFSET);

 regval = cdns_i2c_readreg(CDNS_I2C_CR_OFFSET);
 regval &= ~CDNS_I2C_CR_HOLD;
 regval |= CDNS_I2C_CR_CLR_FIFO;
 cdns_i2c_writereg(regval, CDNS_I2C_CR_OFFSET);

 cdns_i2c_writereg(0, CDNS_I2C_XFER_SIZE_OFFSET);

 regval = cdns_i2c_readreg(CDNS_I2C_ISR_OFFSET);
 cdns_i2c_writereg(regval, CDNS_I2C_ISR_OFFSET);

 regval = cdns_i2c_readreg(CDNS_I2C_SR_OFFSET);
 cdns_i2c_writereg(regval, CDNS_I2C_SR_OFFSET);
}
