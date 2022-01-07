
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {scalar_t__ addr; } ;
struct i2c_algo_iop3xx_data {scalar_t__ ioaddr; } ;


 scalar_t__ CR_OFFSET ;
 scalar_t__ DBR_OFFSET ;
 int EBUSY ;
 unsigned long IOP3XX_ICR_MSTART ;
 unsigned long IOP3XX_ICR_MSTOP ;
 unsigned long IOP3XX_ICR_NACK ;
 unsigned long IOP3XX_ICR_TBYTE ;
 scalar_t__ MYSAR ;
 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;
 unsigned long iic_cook_addr (struct i2c_msg*) ;
 int iop3xx_i2c_wait_tx_done (struct i2c_algo_iop3xx_data*,int*) ;

__attribute__((used)) static int
iop3xx_i2c_send_target_addr(struct i2c_algo_iop3xx_data *iop3xx_adap,
    struct i2c_msg* msg)
{
 unsigned long cr = __raw_readl(iop3xx_adap->ioaddr + CR_OFFSET);
 int status;
 int rc;




 if (msg->addr == MYSAR) {
  return -EBUSY;
 }

 __raw_writel(iic_cook_addr(msg), iop3xx_adap->ioaddr + DBR_OFFSET);

 cr &= ~(IOP3XX_ICR_MSTOP | IOP3XX_ICR_NACK);
 cr |= IOP3XX_ICR_MSTART | IOP3XX_ICR_TBYTE;

 __raw_writel(cr, iop3xx_adap->ioaddr + CR_OFFSET);
 rc = iop3xx_i2c_wait_tx_done(iop3xx_adap, &status);

 return rc;
}
