
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct axi_dmac_desc {int cyclic; int vdesc; int sg; } ;
struct axi_dmac_chan {int direction; int vchan; int max_length; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef int dma_addr_t ;


 unsigned int DIV_ROUND_UP (size_t,int ) ;
 struct axi_dmac_desc* axi_dmac_alloc_desc (unsigned int) ;
 int axi_dmac_check_addr (struct axi_dmac_chan*,int ) ;
 int axi_dmac_check_len (struct axi_dmac_chan*,size_t) ;
 int axi_dmac_fill_linear_sg (struct axi_dmac_chan*,int,int ,unsigned int,size_t,int ) ;
 struct axi_dmac_chan* to_axi_dmac_chan (struct dma_chan*) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *axi_dmac_prep_dma_cyclic(
 struct dma_chan *c, dma_addr_t buf_addr, size_t buf_len,
 size_t period_len, enum dma_transfer_direction direction,
 unsigned long flags)
{
 struct axi_dmac_chan *chan = to_axi_dmac_chan(c);
 struct axi_dmac_desc *desc;
 unsigned int num_periods, num_segments;

 if (direction != chan->direction)
  return ((void*)0);

 if (!axi_dmac_check_len(chan, buf_len) ||
     !axi_dmac_check_addr(chan, buf_addr))
  return ((void*)0);

 if (period_len == 0 || buf_len % period_len)
  return ((void*)0);

 num_periods = buf_len / period_len;
 num_segments = DIV_ROUND_UP(period_len, chan->max_length);

 desc = axi_dmac_alloc_desc(num_periods * num_segments);
 if (!desc)
  return ((void*)0);

 axi_dmac_fill_linear_sg(chan, direction, buf_addr, num_periods,
  period_len, desc->sg);

 desc->cyclic = 1;

 return vchan_tx_prep(&chan->vchan, &desc->vdesc, flags);
}
