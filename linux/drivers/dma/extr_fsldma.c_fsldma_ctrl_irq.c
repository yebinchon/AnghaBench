
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsldma_device {int feature; int dev; struct fsldma_chan** chan; int regs; } ;
struct fsldma_chan {int id; } ;
typedef int irqreturn_t ;


 int FSL_DMA_BIG_ENDIAN ;
 int FSL_DMA_MAX_CHANS_PER_DEVICE ;
 int IRQ_RETVAL (unsigned int) ;
 int dev_dbg (int ,char*,int) ;
 int fsldma_chan_irq (int,struct fsldma_chan*) ;
 int in_be32 (int ) ;
 int in_le32 (int ) ;

__attribute__((used)) static irqreturn_t fsldma_ctrl_irq(int irq, void *data)
{
 struct fsldma_device *fdev = data;
 struct fsldma_chan *chan;
 unsigned int handled = 0;
 u32 gsr, mask;
 int i;

 gsr = (fdev->feature & FSL_DMA_BIG_ENDIAN) ? in_be32(fdev->regs)
         : in_le32(fdev->regs);
 mask = 0xff000000;
 dev_dbg(fdev->dev, "IRQ: gsr 0x%.8x\n", gsr);

 for (i = 0; i < FSL_DMA_MAX_CHANS_PER_DEVICE; i++) {
  chan = fdev->chan[i];
  if (!chan)
   continue;

  if (gsr & mask) {
   dev_dbg(fdev->dev, "IRQ: chan %d\n", chan->id);
   fsldma_chan_irq(irq, chan);
   handled++;
  }

  gsr &= ~mask;
  mask >>= 8;
 }

 return IRQ_RETVAL(handled);
}
