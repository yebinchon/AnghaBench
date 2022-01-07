
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_i2c_dev {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int OMAP_I2C_SYSTEST_REG ;
 int OMAP_I2C_SYSTEST_SCL_O ;
 int OMAP_I2C_SYSTEST_SDA_O ;
 int OMAP_I2C_SYSTEST_ST_EN ;
 int OMAP_I2C_SYSTEST_TMODE_SHIFT ;
 struct omap_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int omap_i2c_read_reg (struct omap_i2c_dev*,int ) ;
 int omap_i2c_write_reg (struct omap_i2c_dev*,int ,int) ;

__attribute__((used)) static void omap_i2c_prepare_recovery(struct i2c_adapter *adap)
{
 struct omap_i2c_dev *dev = i2c_get_adapdata(adap);
 u32 reg;

 reg = omap_i2c_read_reg(dev, OMAP_I2C_SYSTEST_REG);

 reg |= OMAP_I2C_SYSTEST_ST_EN;

 reg |= 3 << OMAP_I2C_SYSTEST_TMODE_SHIFT;

 reg |= OMAP_I2C_SYSTEST_SCL_O;

 reg |= OMAP_I2C_SYSTEST_SDA_O;
 omap_i2c_write_reg(dev, OMAP_I2C_SYSTEST_REG, reg);
}
