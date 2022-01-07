
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct xilinx_axidma_desc_hw {void* next_desc_msb; void* next_desc; } ;


 int memset (struct xilinx_axidma_desc_hw*,int ,int) ;

__attribute__((used)) static void xilinx_dma_clean_hw_desc(struct xilinx_axidma_desc_hw *hw)
{
 u32 next_desc = hw->next_desc;
 u32 next_desc_msb = hw->next_desc_msb;

 memset(hw, 0, sizeof(struct xilinx_axidma_desc_hw));

 hw->next_desc = next_desc;
 hw->next_desc_msb = next_desc_msb;
}
