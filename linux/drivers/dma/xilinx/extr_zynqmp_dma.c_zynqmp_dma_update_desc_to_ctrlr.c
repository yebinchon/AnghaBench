
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_dma_desc_sw {int dst_p; int src_p; } ;
struct zynqmp_dma_chan {int dummy; } ;
typedef int dma_addr_t ;


 int ZYNQMP_DMA_DST_START_LSB ;
 int ZYNQMP_DMA_SRC_START_LSB ;
 int zynqmp_dma_writeq (struct zynqmp_dma_chan*,int ,int ) ;

__attribute__((used)) static void zynqmp_dma_update_desc_to_ctrlr(struct zynqmp_dma_chan *chan,
          struct zynqmp_dma_desc_sw *desc)
{
 dma_addr_t addr;

 addr = desc->src_p;
 zynqmp_dma_writeq(chan, ZYNQMP_DMA_SRC_START_LSB, addr);
 addr = desc->dst_p;
 zynqmp_dma_writeq(chan, ZYNQMP_DMA_DST_START_LSB, addr);
}
