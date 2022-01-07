
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_i2c_dev {int flags; int cmd_complete; scalar_t__ msg_err; int status; int cmd_err; } ;


 int ACCESS_INTR_MASK ;
 int DW_IC_ERR_TX_ABRT ;
 int DW_IC_INTR_MASK ;
 int DW_IC_INTR_RX_FULL ;
 int DW_IC_INTR_STOP_DET ;
 int DW_IC_INTR_TX_ABRT ;
 int DW_IC_INTR_TX_EMPTY ;
 int STATUS_IDLE ;
 int complete (int *) ;
 int dw_readl (struct dw_i2c_dev*,int ) ;
 int dw_writel (struct dw_i2c_dev*,int,int ) ;
 int i2c_dw_disable_int (struct dw_i2c_dev*) ;
 int i2c_dw_read (struct dw_i2c_dev*) ;
 int i2c_dw_read_clear_intrbits (struct dw_i2c_dev*) ;
 int i2c_dw_xfer_msg (struct dw_i2c_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int i2c_dw_irq_handler_master(struct dw_i2c_dev *dev)
{
 u32 stat;

 stat = i2c_dw_read_clear_intrbits(dev);
 if (stat & DW_IC_INTR_TX_ABRT) {
  dev->cmd_err |= DW_IC_ERR_TX_ABRT;
  dev->status = STATUS_IDLE;





  dw_writel(dev, 0, DW_IC_INTR_MASK);
  goto tx_aborted;
 }

 if (stat & DW_IC_INTR_RX_FULL)
  i2c_dw_read(dev);

 if (stat & DW_IC_INTR_TX_EMPTY)
  i2c_dw_xfer_msg(dev);







tx_aborted:
 if ((stat & (DW_IC_INTR_TX_ABRT | DW_IC_INTR_STOP_DET)) || dev->msg_err)
  complete(&dev->cmd_complete);
 else if (unlikely(dev->flags & ACCESS_INTR_MASK)) {

  stat = dw_readl(dev, DW_IC_INTR_MASK);
  i2c_dw_disable_int(dev);
  dw_writel(dev, stat, DW_IC_INTR_MASK);
 }

 return 0;
}
