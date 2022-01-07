
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_desc_slot {struct mv_xor_desc* hw_desc; } ;
struct mv_xor_desc {int byte_count; int phy_dest_addr; int desc_command; scalar_t__ phy_next_desc; int status; } ;
typedef enum dma_ctrl_flags { ____Placeholder_dma_ctrl_flags } dma_ctrl_flags ;
typedef int dma_addr_t ;


 int DMA_PREP_INTERRUPT ;
 int XOR_DESC_DMA_OWNED ;
 int XOR_DESC_EOD_INT_EN ;

__attribute__((used)) static void mv_desc_init(struct mv_xor_desc_slot *desc,
    dma_addr_t addr, u32 byte_count,
    enum dma_ctrl_flags flags)
{
 struct mv_xor_desc *hw_desc = desc->hw_desc;

 hw_desc->status = XOR_DESC_DMA_OWNED;
 hw_desc->phy_next_desc = 0;

 hw_desc->desc_command = (flags & DMA_PREP_INTERRUPT) ?
    XOR_DESC_EOD_INT_EN : 0;
 hw_desc->phy_dest_addr = addr;
 hw_desc->byte_count = byte_count;
}
