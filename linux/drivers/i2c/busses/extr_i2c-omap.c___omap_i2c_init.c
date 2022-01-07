
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_i2c_dev {scalar_t__ rev; scalar_t__ iestate; scalar_t__ westate; scalar_t__ sclhstate; scalar_t__ scllstate; scalar_t__ pscstate; } ;


 scalar_t__ OMAP_I2C_CON_EN ;
 int OMAP_I2C_CON_REG ;
 int OMAP_I2C_IE_REG ;
 int OMAP_I2C_PSC_REG ;
 scalar_t__ OMAP_I2C_REV_ON_3430_3530 ;
 int OMAP_I2C_SCLH_REG ;
 int OMAP_I2C_SCLL_REG ;
 int OMAP_I2C_WE_REG ;
 int omap_i2c_write_reg (struct omap_i2c_dev*,int ,scalar_t__) ;

__attribute__((used)) static void __omap_i2c_init(struct omap_i2c_dev *omap)
{

 omap_i2c_write_reg(omap, OMAP_I2C_CON_REG, 0);


 omap_i2c_write_reg(omap, OMAP_I2C_PSC_REG, omap->pscstate);


 omap_i2c_write_reg(omap, OMAP_I2C_SCLL_REG, omap->scllstate);
 omap_i2c_write_reg(omap, OMAP_I2C_SCLH_REG, omap->sclhstate);
 if (omap->rev >= OMAP_I2C_REV_ON_3430_3530)
  omap_i2c_write_reg(omap, OMAP_I2C_WE_REG, omap->westate);


 omap_i2c_write_reg(omap, OMAP_I2C_CON_REG, OMAP_I2C_CON_EN);
 if (omap->iestate)
  omap_i2c_write_reg(omap, OMAP_I2C_IE_REG, omap->iestate);
}
