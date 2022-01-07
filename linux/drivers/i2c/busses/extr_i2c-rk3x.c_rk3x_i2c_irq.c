
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk3x_i2c {int state; int lock; TYPE_1__* msg; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int flags; } ;


 int ENXIO ;
 int I2C_M_IGNORE_NAK ;
 int IRQ_HANDLED ;
 unsigned int REG_INT_ALL ;
 unsigned int REG_INT_BRF ;
 unsigned int REG_INT_BTF ;
 unsigned int REG_INT_NAKRCV ;
 int REG_IPD ;





 int dev_dbg (int ,char*,int,unsigned int) ;
 int dev_warn (int ,char*,unsigned int) ;
 unsigned int i2c_readl (struct rk3x_i2c*,int ) ;
 int i2c_writel (struct rk3x_i2c*,unsigned int,int ) ;
 int rk3x_i2c_clean_ipd (struct rk3x_i2c*) ;
 int rk3x_i2c_handle_read (struct rk3x_i2c*,unsigned int) ;
 int rk3x_i2c_handle_start (struct rk3x_i2c*,unsigned int) ;
 int rk3x_i2c_handle_stop (struct rk3x_i2c*,unsigned int) ;
 int rk3x_i2c_handle_write (struct rk3x_i2c*,unsigned int) ;
 int rk3x_i2c_stop (struct rk3x_i2c*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t rk3x_i2c_irq(int irqno, void *dev_id)
{
 struct rk3x_i2c *i2c = dev_id;
 unsigned int ipd;

 spin_lock(&i2c->lock);

 ipd = i2c_readl(i2c, REG_IPD);
 if (i2c->state == 132) {
  dev_warn(i2c->dev, "irq in STATE_IDLE, ipd = 0x%x\n", ipd);
  rk3x_i2c_clean_ipd(i2c);
  goto out;
 }

 dev_dbg(i2c->dev, "IRQ: state %d, ipd: %x\n", i2c->state, ipd);


 ipd &= ~(REG_INT_BRF | REG_INT_BTF);

 if (ipd & REG_INT_NAKRCV) {





  i2c_writel(i2c, REG_INT_NAKRCV, REG_IPD);

  ipd &= ~REG_INT_NAKRCV;

  if (!(i2c->msg->flags & I2C_M_IGNORE_NAK))
   rk3x_i2c_stop(i2c, -ENXIO);
 }


 if ((ipd & REG_INT_ALL) == 0)
  goto out;

 switch (i2c->state) {
 case 130:
  rk3x_i2c_handle_start(i2c, ipd);
  break;
 case 128:
  rk3x_i2c_handle_write(i2c, ipd);
  break;
 case 131:
  rk3x_i2c_handle_read(i2c, ipd);
  break;
 case 129:
  rk3x_i2c_handle_stop(i2c, ipd);
  break;
 case 132:
  break;
 }

out:
 spin_unlock(&i2c->lock);
 return IRQ_HANDLED;
}
