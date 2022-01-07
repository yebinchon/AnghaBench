
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_iop3xx_data {scalar_t__ ioaddr; } ;


 scalar_t__ CR_OFFSET ;
 int IOP3XX_ICR_UNIT_RESET ;
 int IOP3XX_ISR_CLEARBITS ;
 scalar_t__ SR_OFFSET ;
 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static void
iop3xx_i2c_reset(struct i2c_algo_iop3xx_data *iop3xx_adap)
{

 __raw_writel(IOP3XX_ICR_UNIT_RESET, iop3xx_adap->ioaddr + CR_OFFSET);
 __raw_writel(IOP3XX_ISR_CLEARBITS, iop3xx_adap->ioaddr + SR_OFFSET);
 __raw_writel(0, iop3xx_adap->ioaddr + CR_OFFSET);
}
