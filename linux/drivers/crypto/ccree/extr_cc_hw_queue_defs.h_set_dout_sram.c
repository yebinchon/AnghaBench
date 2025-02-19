
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc_hw_desc {int* word; } ;


 int DMA_SRAM ;
 int FIELD_PREP (int ,int) ;
 int WORD3_DOUT_DMA_MODE ;
 int WORD3_DOUT_SIZE ;

__attribute__((used)) static inline void set_dout_sram(struct cc_hw_desc *pdesc, u32 addr, u32 size)
{
 pdesc->word[2] = addr;
 pdesc->word[3] |= FIELD_PREP(WORD3_DOUT_DMA_MODE, DMA_SRAM) |
   FIELD_PREP(WORD3_DOUT_SIZE, size);
}
