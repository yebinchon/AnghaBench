
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_i2c_data {unsigned char sr; int pos; scalar_t__ dma_direction; int wait; TYPE_1__* msg; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int flags; int len; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_TO_DEVICE ;
 int I2C_M_RD ;
 int ICIC ;
 int ICIC_RDMAE ;
 int ICIC_TDMAE ;
 int ICSR ;
 unsigned char ICSR_AL ;
 unsigned char ICSR_TACK ;
 unsigned char ICSR_WAIT ;
 int IRQ_HANDLED ;
 unsigned char SW_DONE ;
 int dev_dbg (int ,char*,unsigned char,unsigned char,char*,int,int ) ;
 unsigned char iic_rd (struct sh_mobile_i2c_data*,int ) ;
 int iic_set_clr (struct sh_mobile_i2c_data*,int ,int ,int ) ;
 int iic_wr (struct sh_mobile_i2c_data*,int ,unsigned char) ;
 int sh_mobile_i2c_isr_rx (struct sh_mobile_i2c_data*) ;
 int sh_mobile_i2c_isr_tx (struct sh_mobile_i2c_data*) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t sh_mobile_i2c_isr(int irq, void *dev_id)
{
 struct sh_mobile_i2c_data *pd = dev_id;
 unsigned char sr;
 int wakeup = 0;

 sr = iic_rd(pd, ICSR);
 pd->sr |= sr;

 dev_dbg(pd->dev, "i2c_isr 0x%02x 0x%02x %s %d %d!\n", sr, pd->sr,
        (pd->msg->flags & I2C_M_RD) ? "read" : "write",
        pd->pos, pd->msg->len);


 if (pd->dma_direction == DMA_TO_DEVICE && pd->pos == 0)
  iic_set_clr(pd, ICIC, ICIC_TDMAE, 0);
 else if (sr & (ICSR_AL | ICSR_TACK))

  iic_wr(pd, ICSR, sr & ~(ICSR_AL | ICSR_TACK));
 else if (pd->msg->flags & I2C_M_RD)
  wakeup = sh_mobile_i2c_isr_rx(pd);
 else
  wakeup = sh_mobile_i2c_isr_tx(pd);


 if (pd->dma_direction == DMA_FROM_DEVICE && pd->pos == 1)
  iic_set_clr(pd, ICIC, ICIC_RDMAE, 0);

 if (sr & ICSR_WAIT)
  iic_wr(pd, ICSR, sr & ~ICSR_WAIT);

 if (wakeup) {
  pd->sr |= SW_DONE;
  wake_up(&pd->wait);
 }


 iic_rd(pd, ICSR);

 return IRQ_HANDLED;
}
