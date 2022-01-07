
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dstride; scalar_t__ sstride; } ;
struct st_fdma_hw_node {TYPE_1__ generic; int saddr; int control; int daddr; } ;
struct TYPE_4__ {int dev_addr; } ;
struct st_fdma_chan {TYPE_2__ cfg; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;


 int DMA_MEM_TO_DEV ;
 int FDMA_NODE_CTRL_DST_INCR ;
 int FDMA_NODE_CTRL_DST_STATIC ;
 int FDMA_NODE_CTRL_SRC_INCR ;
 int FDMA_NODE_CTRL_SRC_STATIC ;

__attribute__((used)) static void fill_hw_node(struct st_fdma_hw_node *hw_node,
   struct st_fdma_chan *fchan,
   enum dma_transfer_direction direction)
{
 if (direction == DMA_MEM_TO_DEV) {
  hw_node->control |= FDMA_NODE_CTRL_SRC_INCR;
  hw_node->control |= FDMA_NODE_CTRL_DST_STATIC;
  hw_node->daddr = fchan->cfg.dev_addr;
 } else {
  hw_node->control |= FDMA_NODE_CTRL_SRC_STATIC;
  hw_node->control |= FDMA_NODE_CTRL_DST_INCR;
  hw_node->saddr = fchan->cfg.dev_addr;
 }

 hw_node->generic.sstride = 0;
 hw_node->generic.dstride = 0;
}
