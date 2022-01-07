
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc_hw_desc {int * word; } ;
typedef enum cc_axi_sec { ____Placeholder_cc_axi_sec } cc_axi_sec ;
typedef int dma_addr_t ;


 int DMA_MLLI ;
 int FIELD_PREP (int ,int) ;
 int WORD3_DOUT_LAST_IND ;
 int set_dout_type (struct cc_hw_desc*,int ,int ,int ,int) ;

__attribute__((used)) static inline void set_dout_mlli(struct cc_hw_desc *pdesc, dma_addr_t addr,
     u32 size, enum cc_axi_sec axi_sec,
     bool last_ind)
{
 set_dout_type(pdesc, DMA_MLLI, addr, size, axi_sec);
 pdesc->word[3] |= FIELD_PREP(WORD3_DOUT_LAST_IND, last_ind);
}
