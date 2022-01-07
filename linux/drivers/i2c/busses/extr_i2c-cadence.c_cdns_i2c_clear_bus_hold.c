
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cdns_i2c {int dummy; } ;


 int CDNS_I2C_CR_HOLD ;
 int CDNS_I2C_CR_OFFSET ;
 int cdns_i2c_readreg (int ) ;
 int cdns_i2c_writereg (int,int ) ;

__attribute__((used)) static void cdns_i2c_clear_bus_hold(struct cdns_i2c *id)
{
 u32 reg = cdns_i2c_readreg(CDNS_I2C_CR_OFFSET);
 if (reg & CDNS_I2C_CR_HOLD)
  cdns_i2c_writereg(reg & ~CDNS_I2C_CR_HOLD, CDNS_I2C_CR_OFFSET);
}
