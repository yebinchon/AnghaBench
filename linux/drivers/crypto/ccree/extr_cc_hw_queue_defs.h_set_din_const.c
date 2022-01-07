
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc_hw_desc {int* word; } ;


 int DMA_SRAM ;
 int FIELD_PREP (int ,int) ;
 int WORD1_DIN_CONST_VALUE ;
 int WORD1_DIN_DMA_MODE ;
 int WORD1_DIN_SIZE ;

__attribute__((used)) static inline void set_din_const(struct cc_hw_desc *pdesc, u32 val, u32 size)
{
 pdesc->word[0] = val;
 pdesc->word[1] |= FIELD_PREP(WORD1_DIN_CONST_VALUE, 1) |
   FIELD_PREP(WORD1_DIN_DMA_MODE, DMA_SRAM) |
   FIELD_PREP(WORD1_DIN_SIZE, size);
}
