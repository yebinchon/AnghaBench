
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_iproc_i2c_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR_MASK ;
 int ISR_MASK_SLAVE ;
 int IS_OFFSET ;
 int bcm_iproc_i2c_process_m_event (struct bcm_iproc_i2c_dev*,int) ;
 int bcm_iproc_i2c_slave_isr (struct bcm_iproc_i2c_dev*,int) ;
 int iproc_i2c_rd_reg (struct bcm_iproc_i2c_dev*,int ) ;
 int iproc_i2c_wr_reg (struct bcm_iproc_i2c_dev*,int ,int) ;

__attribute__((used)) static irqreturn_t bcm_iproc_i2c_isr(int irq, void *data)
{
 struct bcm_iproc_i2c_dev *iproc_i2c = data;
 u32 status = iproc_i2c_rd_reg(iproc_i2c, IS_OFFSET);
 bool ret;
 u32 sl_status = status & ISR_MASK_SLAVE;

 if (sl_status) {
  ret = bcm_iproc_i2c_slave_isr(iproc_i2c, sl_status);
  if (ret)
   return IRQ_HANDLED;
  else
   return IRQ_NONE;
 }

 status &= ISR_MASK;
 if (!status)
  return IRQ_NONE;


 bcm_iproc_i2c_process_m_event(iproc_i2c, status);
 iproc_i2c_wr_reg(iproc_i2c, IS_OFFSET, status);

 return IRQ_HANDLED;
}
