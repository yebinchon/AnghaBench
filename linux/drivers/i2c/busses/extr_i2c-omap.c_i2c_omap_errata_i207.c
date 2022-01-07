
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_i2c_dev {int dev; } ;


 int OMAP_I2C_STAT_BB ;
 int OMAP_I2C_STAT_RDR ;
 int OMAP_I2C_STAT_REG ;
 int dev_dbg (int ,char*) ;
 int omap_i2c_ack_stat (struct omap_i2c_dev*,int) ;
 int omap_i2c_read_reg (struct omap_i2c_dev*,int ) ;

__attribute__((used)) static inline void i2c_omap_errata_i207(struct omap_i2c_dev *omap, u16 stat)
{







 if (stat & OMAP_I2C_STAT_RDR) {

  omap_i2c_ack_stat(omap, OMAP_I2C_STAT_RDR);


  if (!(omap_i2c_read_reg(omap, OMAP_I2C_STAT_REG)
      & OMAP_I2C_STAT_BB)) {


   if (omap_i2c_read_reg(omap, OMAP_I2C_STAT_REG)
      & OMAP_I2C_STAT_RDR) {
    omap_i2c_ack_stat(omap, OMAP_I2C_STAT_RDR);
    dev_dbg(omap->dev, "RDR when bus is busy.\n");
   }

  }
 }
}
