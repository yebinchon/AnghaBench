
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stm32_mdma_device {scalar_t__ base; struct stm32_mdma_chan* chan; } ;
struct TYPE_4__ {int lock; } ;
struct stm32_mdma_chan {int id; TYPE_2__ vchan; TYPE_1__* desc; int curr_hwdesc; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int vdesc; int count; int cyclic; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int STM32_MDMA_CCR (int) ;
 int STM32_MDMA_CCR_IRQ_MASK ;
 scalar_t__ STM32_MDMA_CESR (int) ;
 int STM32_MDMA_CIFCR (int) ;
 int STM32_MDMA_CIFCR_CBRTIF ;
 int STM32_MDMA_CIFCR_CBTIF ;
 int STM32_MDMA_CIFCR_CCTCIF ;
 int STM32_MDMA_CIFCR_CLTCIF ;
 int STM32_MDMA_CIFCR_CTEIF ;
 int STM32_MDMA_CISR (int) ;





 scalar_t__ STM32_MDMA_GISR0 ;
 scalar_t__ STM32_MDMA_GISR1 ;
 int __ffs (int) ;
 int chan2dev (struct stm32_mdma_chan*) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int,...) ;
 int mdma2dev (struct stm32_mdma_device*) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stm32_mdma_read (struct stm32_mdma_device*,int ) ;
 int stm32_mdma_set_bits (struct stm32_mdma_device*,int,int ) ;
 int stm32_mdma_xfer_end (struct stm32_mdma_chan*) ;
 int vchan_cyclic_callback (int *) ;

__attribute__((used)) static irqreturn_t stm32_mdma_irq_handler(int irq, void *devid)
{
 struct stm32_mdma_device *dmadev = devid;
 struct stm32_mdma_chan *chan = devid;
 u32 reg, id, ien, status, flag;


 status = readl_relaxed(dmadev->base + STM32_MDMA_GISR0);
 if (status) {
  id = __ffs(status);
 } else {
  status = readl_relaxed(dmadev->base + STM32_MDMA_GISR1);
  if (!status) {
   dev_dbg(mdma2dev(dmadev), "spurious it\n");
   return IRQ_NONE;
  }
  id = __ffs(status);




  id += 32;
 }

 chan = &dmadev->chan[id];
 if (!chan) {
  dev_dbg(mdma2dev(dmadev), "MDMA channel not initialized\n");
  goto exit;
 }


 spin_lock(&chan->vchan.lock);
 status = stm32_mdma_read(dmadev, STM32_MDMA_CISR(chan->id));
 ien = stm32_mdma_read(dmadev, STM32_MDMA_CCR(chan->id));
 ien &= STM32_MDMA_CCR_IRQ_MASK;
 ien >>= 1;

 if (!(status & ien)) {
  spin_unlock(&chan->vchan.lock);
  dev_dbg(chan2dev(chan),
   "spurious it (status=0x%04x, ien=0x%04x)\n",
   status, ien);
  return IRQ_NONE;
 }

 flag = __ffs(status & ien);
 reg = STM32_MDMA_CIFCR(chan->id);

 switch (1 << flag) {
 case 128:
  id = chan->id;
  status = readl_relaxed(dmadev->base + STM32_MDMA_CESR(id));
  dev_err(chan2dev(chan), "Transfer Err: stat=0x%08x\n", status);
  stm32_mdma_set_bits(dmadev, reg, STM32_MDMA_CIFCR_CTEIF);
  break;

 case 130:
  stm32_mdma_set_bits(dmadev, reg, STM32_MDMA_CIFCR_CCTCIF);
  stm32_mdma_xfer_end(chan);
  break;

 case 132:
  stm32_mdma_set_bits(dmadev, reg, STM32_MDMA_CIFCR_CBRTIF);
  break;

 case 131:
  stm32_mdma_set_bits(dmadev, reg, STM32_MDMA_CIFCR_CBTIF);
  chan->curr_hwdesc++;
  if (chan->desc && chan->desc->cyclic) {
   if (chan->curr_hwdesc == chan->desc->count)
    chan->curr_hwdesc = 0;
   vchan_cyclic_callback(&chan->desc->vdesc);
  }
  break;

 case 129:
  stm32_mdma_set_bits(dmadev, reg, STM32_MDMA_CIFCR_CLTCIF);
  break;

 default:
  dev_err(chan2dev(chan), "it %d unhandled (status=0x%04x)\n",
   1 << flag, status);
 }

 spin_unlock(&chan->vchan.lock);

exit:
 return IRQ_HANDLED;
}
