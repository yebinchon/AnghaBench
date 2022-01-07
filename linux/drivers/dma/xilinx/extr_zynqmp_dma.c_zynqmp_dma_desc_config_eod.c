
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_dma_desc_ll {int ctrl; } ;
struct zynqmp_dma_chan {int dummy; } ;


 int ZYNQMP_DMA_DESC_CTRL_COMP_INT ;
 int ZYNQMP_DMA_DESC_CTRL_STOP ;

__attribute__((used)) static void zynqmp_dma_desc_config_eod(struct zynqmp_dma_chan *chan,
           void *desc)
{
 struct zynqmp_dma_desc_ll *hw = (struct zynqmp_dma_desc_ll *)desc;

 hw->ctrl |= ZYNQMP_DMA_DESC_CTRL_STOP;
 hw++;
 hw->ctrl |= ZYNQMP_DMA_DESC_CTRL_COMP_INT | ZYNQMP_DMA_DESC_CTRL_STOP;
}
