
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct pxa_i2c {int slave_addr; int fm_mask; int hs_mask; TYPE_1__ adap; scalar_t__ high_mode; scalar_t__ fast_mode; scalar_t__ reg_isar; } ;


 int CONFIG_I2C_PXA_SLAVE ;
 int I2C_ICR_INIT ;
 int I2C_ISR_INIT ;
 int ICR_ALDIE ;
 int ICR_IUE ;
 int ICR_SADIE ;
 int ICR_SSDIE ;
 int ICR_UR ;
 scalar_t__ IS_ENABLED (int ) ;
 int _ICR (struct pxa_i2c*) ;
 int _ISAR (struct pxa_i2c*) ;
 int _ISR (struct pxa_i2c*) ;
 int dev_info (int *,char*) ;
 int i2c_pxa_abort (struct pxa_i2c*) ;
 int i2c_pxa_set_slave (struct pxa_i2c*,int ) ;
 int pr_debug (char*) ;
 int readl (int ) ;
 int udelay (int) ;
 int writel (int,int ) ;

__attribute__((used)) static void i2c_pxa_reset(struct pxa_i2c *i2c)
{
 pr_debug("Resetting I2C Controller Unit\n");


 i2c_pxa_abort(i2c);


 writel(ICR_UR, _ICR(i2c));
 writel(I2C_ISR_INIT, _ISR(i2c));
 writel(readl(_ICR(i2c)) & ~ICR_UR, _ICR(i2c));

 if (i2c->reg_isar && IS_ENABLED(CONFIG_I2C_PXA_SLAVE))
  writel(i2c->slave_addr, _ISAR(i2c));


 writel(I2C_ICR_INIT | (i2c->fast_mode ? i2c->fm_mask : 0), _ICR(i2c));
 writel(readl(_ICR(i2c)) | (i2c->high_mode ? i2c->hs_mask : 0), _ICR(i2c));






 i2c_pxa_set_slave(i2c, 0);


 writel(readl(_ICR(i2c)) | ICR_IUE, _ICR(i2c));
 udelay(100);
}
