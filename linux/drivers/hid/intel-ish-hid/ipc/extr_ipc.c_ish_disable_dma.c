
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {int devc; } ;


 int EBUSY ;
 int IPC_ISH_IN_DMA ;
 int IPC_REG_ISH_RMP2 ;
 unsigned int MAX_DMA_DELAY ;
 int _ish_read_fw_sts_reg (struct ishtp_device*) ;
 int dev_err (int ,char*) ;
 int ish_reg_write (struct ishtp_device*,int ,int ) ;
 int mdelay (int) ;

int ish_disable_dma(struct ishtp_device *dev)
{
 unsigned int dma_delay;


 ish_reg_write(dev, IPC_REG_ISH_RMP2, 0);


 for (dma_delay = 0; dma_delay < MAX_DMA_DELAY &&
  _ish_read_fw_sts_reg(dev) & (IPC_ISH_IN_DMA);
  dma_delay += 5)
  mdelay(5);

 if (dma_delay >= MAX_DMA_DELAY) {
  dev_err(dev->devc,
   "Wait for DMA inactive timeout\n");
  return -EBUSY;
 }

 return 0;
}
