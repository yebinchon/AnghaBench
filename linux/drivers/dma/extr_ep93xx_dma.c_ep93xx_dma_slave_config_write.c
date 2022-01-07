
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct ep93xx_dma_chan {int lock; void* runtime_ctrl; void* runtime_addr; TYPE_1__* edma; } ;
struct dma_slave_config {int src_addr_width; int dst_addr_width; void* dst_addr; void* src_addr; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;
struct TYPE_2__ {int m2m; } ;







 int EINVAL ;
 void* M2M_CONTROL_PW_16 ;
 void* M2M_CONTROL_PW_32 ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ep93xx_dma_chan* to_ep93xx_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int ep93xx_dma_slave_config_write(struct dma_chan *chan,
      enum dma_transfer_direction dir,
      struct dma_slave_config *config)
{
 struct ep93xx_dma_chan *edmac = to_ep93xx_dma_chan(chan);
 enum dma_slave_buswidth width;
 unsigned long flags;
 u32 addr, ctrl;

 if (!edmac->edma->m2m)
  return -EINVAL;

 switch (dir) {
 case 132:
  width = config->src_addr_width;
  addr = config->src_addr;
  break;

 case 131:
  width = config->dst_addr_width;
  addr = config->dst_addr;
  break;

 default:
  return -EINVAL;
 }

 switch (width) {
 case 130:
  ctrl = 0;
  break;
 case 129:
  ctrl = M2M_CONTROL_PW_16;
  break;
 case 128:
  ctrl = M2M_CONTROL_PW_32;
  break;
 default:
  return -EINVAL;
 }

 spin_lock_irqsave(&edmac->lock, flags);
 edmac->runtime_addr = addr;
 edmac->runtime_ctrl = ctrl;
 spin_unlock_irqrestore(&edmac->lock, flags);

 return 0;
}
