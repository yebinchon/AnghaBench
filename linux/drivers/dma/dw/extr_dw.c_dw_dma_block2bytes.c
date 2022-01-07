
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct dw_dma_chan {int dummy; } ;


 size_t DWC_CTLH_BLOCK_TS (size_t) ;

__attribute__((used)) static size_t dw_dma_block2bytes(struct dw_dma_chan *dwc, u32 block, u32 width)
{
 return DWC_CTLH_BLOCK_TS(block) << width;
}
