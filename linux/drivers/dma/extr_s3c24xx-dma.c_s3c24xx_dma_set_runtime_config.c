
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct dma_slave_config {scalar_t__ src_addr_width; scalar_t__ dst_addr_width; } ;
struct s3c24xx_dma_chan {TYPE_1__ vc; struct dma_slave_config cfg; int slave; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ DMA_SLAVE_BUSWIDTH_8_BYTES ;
 int EINVAL ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct s3c24xx_dma_chan* to_s3c24xx_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int s3c24xx_dma_set_runtime_config(struct dma_chan *chan,
      struct dma_slave_config *config)
{
 struct s3c24xx_dma_chan *s3cchan = to_s3c24xx_dma_chan(chan);
 unsigned long flags;
 int ret = 0;


 if (config->src_addr_width == DMA_SLAVE_BUSWIDTH_8_BYTES ||
     config->dst_addr_width == DMA_SLAVE_BUSWIDTH_8_BYTES)
  return -EINVAL;

 spin_lock_irqsave(&s3cchan->vc.lock, flags);

 if (!s3cchan->slave) {
  ret = -EINVAL;
  goto out;
 }

 s3cchan->cfg = *config;

out:
 spin_unlock_irqrestore(&s3cchan->vc.lock, flags);
 return ret;
}
