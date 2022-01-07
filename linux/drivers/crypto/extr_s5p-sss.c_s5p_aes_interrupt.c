
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5p_aes_dev {int busy; int hash_tasklet; int lock; int hash_sg_iter; struct ablkcipher_request* req; int sg_src; int sg_dst; int tasklet; int hash_flags; } ;
struct platform_device {int dummy; } ;
struct ablkcipher_request {int dummy; } ;
typedef int irqreturn_t ;


 int FCINTPEND ;
 int FCINTSTAT ;
 int HASH_FLAGS_OUTPUT_READY ;
 int IRQ_HANDLED ;
 int SSS_FCINTSTAT_BRDMAINT ;
 int SSS_FCINTSTAT_BTDMAINT ;
 int SSS_FCINTSTAT_HDONEINT ;
 int SSS_FCINTSTAT_HPARTINT ;
 int SSS_FCINTSTAT_HRDMAINT ;
 int SSS_HASH_PAUSE ;
 int SSS_HASH_STATUS_MSG_DONE ;
 int SSS_HASH_STATUS_PARTIAL_DONE ;
 int SSS_READ (struct s5p_aes_dev*,int ) ;
 int SSS_REG_HASH_CTRL_PAUSE ;
 int SSS_REG_HASH_STATUS ;
 int SSS_WRITE (struct s5p_aes_dev*,int ,int) ;
 struct s5p_aes_dev* platform_get_drvdata (struct platform_device*) ;
 int s5p_aes_complete (struct ablkcipher_request*,int) ;
 int s5p_aes_rx (struct s5p_aes_dev*) ;
 int s5p_aes_tx (struct s5p_aes_dev*) ;
 int s5p_hash_rx (struct s5p_aes_dev*) ;
 int s5p_hash_write (struct s5p_aes_dev*,int ,int) ;
 int s5p_set_dma_hashdata (struct s5p_aes_dev*,int ) ;
 int s5p_set_dma_indata (struct s5p_aes_dev*,int ) ;
 int s5p_set_dma_outdata (struct s5p_aes_dev*,int ) ;
 int s5p_sg_done (struct s5p_aes_dev*) ;
 int set_bit (int ,int *) ;
 scalar_t__ sg_is_last (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t s5p_aes_interrupt(int irq, void *dev_id)
{
 struct platform_device *pdev = dev_id;
 struct s5p_aes_dev *dev = platform_get_drvdata(pdev);
 struct ablkcipher_request *req;
 int err_dma_tx = 0;
 int err_dma_rx = 0;
 int err_dma_hx = 0;
 bool tx_end = 0;
 bool hx_end = 0;
 unsigned long flags;
 u32 status, st_bits;
 int err;

 spin_lock_irqsave(&dev->lock, flags);
 status = SSS_READ(dev, FCINTSTAT);
 if (status & SSS_FCINTSTAT_BRDMAINT)
  err_dma_rx = s5p_aes_rx(dev);

 if (status & SSS_FCINTSTAT_BTDMAINT) {
  if (sg_is_last(dev->sg_dst))
   tx_end = 1;
  err_dma_tx = s5p_aes_tx(dev);
 }

 if (status & SSS_FCINTSTAT_HRDMAINT)
  err_dma_hx = s5p_hash_rx(dev);

 st_bits = status & (SSS_FCINTSTAT_BRDMAINT | SSS_FCINTSTAT_BTDMAINT |
    SSS_FCINTSTAT_HRDMAINT);

 SSS_WRITE(dev, FCINTPEND, st_bits);


 if (status & (SSS_FCINTSTAT_HDONEINT | SSS_FCINTSTAT_HPARTINT)) {

  if (status & SSS_FCINTSTAT_HPARTINT)
   st_bits = SSS_HASH_STATUS_PARTIAL_DONE;

  if (status & SSS_FCINTSTAT_HDONEINT)
   st_bits = SSS_HASH_STATUS_MSG_DONE;

  set_bit(HASH_FLAGS_OUTPUT_READY, &dev->hash_flags);
  s5p_hash_write(dev, SSS_REG_HASH_STATUS, st_bits);
  hx_end = 1;

  err_dma_hx = 0;
 }

 if (err_dma_rx < 0) {
  err = err_dma_rx;
  goto error;
 }
 if (err_dma_tx < 0) {
  err = err_dma_tx;
  goto error;
 }

 if (tx_end) {
  s5p_sg_done(dev);
  if (err_dma_hx == 1)
   s5p_set_dma_hashdata(dev, dev->hash_sg_iter);

  spin_unlock_irqrestore(&dev->lock, flags);

  s5p_aes_complete(dev->req, 0);

  tasklet_schedule(&dev->tasklet);
 } else {






  if (err_dma_tx == 1)
   s5p_set_dma_outdata(dev, dev->sg_dst);
  if (err_dma_rx == 1)
   s5p_set_dma_indata(dev, dev->sg_src);
  if (err_dma_hx == 1)
   s5p_set_dma_hashdata(dev, dev->hash_sg_iter);

  spin_unlock_irqrestore(&dev->lock, flags);
 }

 goto hash_irq_end;

error:
 s5p_sg_done(dev);
 dev->busy = 0;
 req = dev->req;
 if (err_dma_hx == 1)
  s5p_set_dma_hashdata(dev, dev->hash_sg_iter);

 spin_unlock_irqrestore(&dev->lock, flags);
 s5p_aes_complete(req, err);

hash_irq_end:





 if (hx_end)
  tasklet_schedule(&dev->hash_tasklet);
 else if (err_dma_hx == 2)
  s5p_hash_write(dev, SSS_REG_HASH_CTRL_PAUSE,
          SSS_HASH_PAUSE);

 return IRQ_HANDLED;
}
