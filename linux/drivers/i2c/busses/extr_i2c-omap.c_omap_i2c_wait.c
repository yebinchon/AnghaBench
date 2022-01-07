
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_i2c_dev {int dummy; } ;


 int OMAP_I2C_IE_REG ;
 int OMAP_I2C_STAT_REG ;
 int omap_i2c_read_reg (struct omap_i2c_dev*,int ) ;

__attribute__((used)) static void omap_i2c_wait(struct omap_i2c_dev *omap)
{
 u16 stat;
 u16 mask = omap_i2c_read_reg(omap, OMAP_I2C_IE_REG);
 int count = 0;

 do {
  stat = omap_i2c_read_reg(omap, OMAP_I2C_STAT_REG);
  count++;
 } while (!(stat & mask) && count < 5);
}
