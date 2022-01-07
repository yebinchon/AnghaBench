
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_i2c_dev {int adapter; } ;


 int EBUSY ;
 int OMAP_I2C_SYSTEST_REG ;
 int OMAP_I2C_SYSTEST_SCL_I_FUNC ;
 int OMAP_I2C_SYSTEST_SDA_I_FUNC ;
 int i2c_recover_bus (int *) ;
 int omap_i2c_read_reg (struct omap_i2c_dev*,int ) ;

__attribute__((used)) static int omap_i2c_recover_bus(struct omap_i2c_dev *omap)
{
 u16 systest;

 systest = omap_i2c_read_reg(omap, OMAP_I2C_SYSTEST_REG);
 if ((systest & OMAP_I2C_SYSTEST_SCL_I_FUNC) &&
     (systest & OMAP_I2C_SYSTEST_SDA_I_FUNC))
  return 0;
 if (!(systest & OMAP_I2C_SYSTEST_SCL_I_FUNC))
  return -EBUSY;
 return i2c_recover_bus(&omap->adapter);
}
