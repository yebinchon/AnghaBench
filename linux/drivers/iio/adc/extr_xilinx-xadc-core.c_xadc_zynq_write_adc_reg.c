
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct xadc {int completion; int lock; } ;


 int ARRAY_SIZE (int*) ;
 int EIO ;
 int HZ ;
 int XADC_ZYNQ_CFG_DFIFOTH_MASK ;
 int XADC_ZYNQ_CFG_DFIFOTH_OFFSET ;
 int XADC_ZYNQ_CMD (int ,unsigned int,int ) ;
 int XADC_ZYNQ_CMD_WRITE ;
 int XADC_ZYNQ_INT_DFIFO_GTH ;
 int XADC_ZYNQ_REG_CFG ;
 int XADC_ZYNQ_REG_DFIFO ;
 int reinit_completion (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;
 int xadc_read_reg (struct xadc*,int ,int*) ;
 int xadc_write_reg (struct xadc*,int ,int) ;
 int xadc_zynq_update_intmsk (struct xadc*,int ,int ) ;
 int xadc_zynq_write_fifo (struct xadc*,int*,int ) ;

__attribute__((used)) static int xadc_zynq_write_adc_reg(struct xadc *xadc, unsigned int reg,
 uint16_t val)
{
 uint32_t cmd[1];
 uint32_t tmp;
 int ret;

 spin_lock_irq(&xadc->lock);
 xadc_zynq_update_intmsk(xadc, XADC_ZYNQ_INT_DFIFO_GTH,
   XADC_ZYNQ_INT_DFIFO_GTH);

 reinit_completion(&xadc->completion);

 cmd[0] = XADC_ZYNQ_CMD(XADC_ZYNQ_CMD_WRITE, reg, val);
 xadc_zynq_write_fifo(xadc, cmd, ARRAY_SIZE(cmd));
 xadc_read_reg(xadc, XADC_ZYNQ_REG_CFG, &tmp);
 tmp &= ~XADC_ZYNQ_CFG_DFIFOTH_MASK;
 tmp |= 0 << XADC_ZYNQ_CFG_DFIFOTH_OFFSET;
 xadc_write_reg(xadc, XADC_ZYNQ_REG_CFG, tmp);

 xadc_zynq_update_intmsk(xadc, XADC_ZYNQ_INT_DFIFO_GTH, 0);
 spin_unlock_irq(&xadc->lock);

 ret = wait_for_completion_interruptible_timeout(&xadc->completion, HZ);
 if (ret == 0)
  ret = -EIO;
 else
  ret = 0;

 xadc_read_reg(xadc, XADC_ZYNQ_REG_DFIFO, &tmp);

 return ret;
}
