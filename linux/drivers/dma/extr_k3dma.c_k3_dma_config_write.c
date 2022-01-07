
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int chan_id; } ;
struct TYPE_4__ {TYPE_1__ chan; } ;
struct k3_dma_chan {int ccfg; TYPE_2__ vc; int dev_addr; } ;
struct dma_slave_config {int src_maxburst; int src_addr_width; int dst_maxburst; int dst_addr_width; int dst_addr; int src_addr; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;


 int CX_CFG_DSTINCR ;
 int CX_CFG_EN ;
 int CX_CFG_MEM2PER ;
 int CX_CFG_SRCINCR ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;




 int DMA_SLAVE_BUSWIDTH_UNDEFINED ;
 int __ffs (int) ;
 struct k3_dma_chan* to_k3_chan (struct dma_chan*) ;

__attribute__((used)) static int k3_dma_config_write(struct dma_chan *chan,
          enum dma_transfer_direction dir,
          struct dma_slave_config *cfg)
{
 struct k3_dma_chan *c = to_k3_chan(chan);
 u32 maxburst = 0, val = 0;
 enum dma_slave_buswidth width = DMA_SLAVE_BUSWIDTH_UNDEFINED;

 if (dir == DMA_DEV_TO_MEM) {
  c->ccfg = CX_CFG_DSTINCR;
  c->dev_addr = cfg->src_addr;
  maxburst = cfg->src_maxburst;
  width = cfg->src_addr_width;
 } else if (dir == DMA_MEM_TO_DEV) {
  c->ccfg = CX_CFG_SRCINCR;
  c->dev_addr = cfg->dst_addr;
  maxburst = cfg->dst_maxburst;
  width = cfg->dst_addr_width;
 }
 switch (width) {
 case 131:
 case 130:
 case 129:
 case 128:
  val = __ffs(width);
  break;
 default:
  val = 3;
  break;
 }
 c->ccfg |= (val << 12) | (val << 16);

 if ((maxburst == 0) || (maxburst > 16))
  val = 15;
 else
  val = maxburst - 1;
 c->ccfg |= (val << 20) | (val << 24);
 c->ccfg |= CX_CFG_MEM2PER | CX_CFG_EN;


 c->ccfg |= c->vc.chan.chan_id << 4;

 return 0;
}
