
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_i2c_dev {int dummy; } ;


 int OMAP_I2C_STAT_REG ;
 int omap_i2c_write_reg (struct omap_i2c_dev*,int ,int ) ;

__attribute__((used)) static inline void
omap_i2c_ack_stat(struct omap_i2c_dev *omap, u16 stat)
{
 omap_i2c_write_reg(omap, OMAP_I2C_STAT_REG, stat);
}
