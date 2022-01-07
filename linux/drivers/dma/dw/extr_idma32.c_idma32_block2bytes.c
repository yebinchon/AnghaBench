
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_dma_chan {int dummy; } ;


 size_t IDMA32C_CTLH_BLOCK_TS (int ) ;

__attribute__((used)) static size_t idma32_block2bytes(struct dw_dma_chan *dwc, u32 block, u32 width)
{
 return IDMA32C_CTLH_BLOCK_TS(block);
}
