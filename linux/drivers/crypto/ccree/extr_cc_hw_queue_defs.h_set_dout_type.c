
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cc_hw_desc {int* word; } ;
typedef enum cc_dma_mode { ____Placeholder_cc_dma_mode } cc_dma_mode ;
typedef enum cc_axi_sec { ____Placeholder_cc_axi_sec } cc_axi_sec ;
typedef int dma_addr_t ;


 int FIELD_PREP (int ,int) ;
 int WORD3_DOUT_DMA_MODE ;
 int WORD3_DOUT_SIZE ;
 int WORD3_NS_BIT ;
 int WORD5_DOUT_ADDR_HIGH ;

__attribute__((used)) static inline void set_dout_type(struct cc_hw_desc *pdesc,
     enum cc_dma_mode dma_mode, dma_addr_t addr,
     u32 size, enum cc_axi_sec axi_sec)
{
 pdesc->word[2] = (u32)addr;



 pdesc->word[3] |= FIELD_PREP(WORD3_DOUT_DMA_MODE, dma_mode) |
    FIELD_PREP(WORD3_DOUT_SIZE, size) |
    FIELD_PREP(WORD3_NS_BIT, axi_sec);
}
