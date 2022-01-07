
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t length; } ;
struct st_fdma_hw_node {size_t nbytes; TYPE_3__ generic; void* daddr; void* saddr; int control; int next; } ;
struct st_fdma_desc {int iscyclic; int vdesc; TYPE_2__* node; } ;
struct st_fdma_chan {int vchan; int dreq_line; TYPE_1__* fdev; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef void* dma_addr_t ;
struct TYPE_5__ {int pdesc; struct st_fdma_hw_node* desc; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_MEM_TO_DEV ;
 int FDMA_NODE_CTRL_INT_EON ;
 int FDMA_NODE_CTRL_REQ_MAP_DREQ (int ) ;
 scalar_t__ config_reqctrl (struct st_fdma_chan*,int) ;
 int dev_err (int ,char*) ;
 int fill_hw_node (struct st_fdma_hw_node*,struct st_fdma_chan*,int) ;
 struct st_fdma_desc* st_fdma_alloc_desc (struct st_fdma_chan*,int) ;
 struct st_fdma_chan* st_fdma_prep_common (struct dma_chan*,size_t,int) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *st_fdma_prep_dma_cyclic(
  struct dma_chan *chan, dma_addr_t buf_addr, size_t len,
  size_t period_len, enum dma_transfer_direction direction,
  unsigned long flags)
{
 struct st_fdma_chan *fchan;
 struct st_fdma_desc *fdesc;
 int sg_len, i;

 fchan = st_fdma_prep_common(chan, len, direction);
 if (!fchan)
  return ((void*)0);

 if (!period_len)
  return ((void*)0);

 if (config_reqctrl(fchan, direction)) {
  dev_err(fchan->fdev->dev, "bad width or direction\n");
  return ((void*)0);
 }


 if (len % period_len != 0) {
  dev_err(fchan->fdev->dev, "len is not multiple of period\n");
  return ((void*)0);
 }

 sg_len = len / period_len;
 fdesc = st_fdma_alloc_desc(fchan, sg_len);
 if (!fdesc) {
  dev_err(fchan->fdev->dev, "no memory for desc\n");
  return ((void*)0);
 }

 fdesc->iscyclic = 1;

 for (i = 0; i < sg_len; i++) {
  struct st_fdma_hw_node *hw_node = fdesc->node[i].desc;

  hw_node->next = fdesc->node[(i + 1) % sg_len].pdesc;

  hw_node->control =
   FDMA_NODE_CTRL_REQ_MAP_DREQ(fchan->dreq_line);
  hw_node->control |= FDMA_NODE_CTRL_INT_EON;

  fill_hw_node(hw_node, fchan, direction);

  if (direction == DMA_MEM_TO_DEV)
   hw_node->saddr = buf_addr + (i * period_len);
  else
   hw_node->daddr = buf_addr + (i * period_len);

  hw_node->nbytes = period_len;
  hw_node->generic.length = period_len;
 }

 return vchan_tx_prep(&fchan->vchan, &fdesc->vdesc, flags);
}
