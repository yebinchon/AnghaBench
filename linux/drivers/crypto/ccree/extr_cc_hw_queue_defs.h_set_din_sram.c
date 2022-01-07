
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc_hw_desc {int* word; } ;
typedef scalar_t__ dma_addr_t ;


 int DMA_SRAM ;
 int FIELD_PREP (int ,int) ;
 int WORD1_DIN_DMA_MODE ;
 int WORD1_DIN_SIZE ;

__attribute__((used)) static inline void set_din_sram(struct cc_hw_desc *pdesc, dma_addr_t addr,
    u32 size)
{
 pdesc->word[0] = (u32)addr;
 pdesc->word[1] |= FIELD_PREP(WORD1_DIN_SIZE, size) |
    FIELD_PREP(WORD1_DIN_DMA_MODE, DMA_SRAM);
}
