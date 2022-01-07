
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc_hw_desc {int* word; } ;


 int FIELD_PREP (int ,int) ;
 int WORD3_DOUT_LAST_IND ;
 int WORD3_DOUT_SIZE ;

__attribute__((used)) static inline void set_dout_no_dma(struct cc_hw_desc *pdesc, u32 addr,
       u32 size, bool write_enable)
{
 pdesc->word[2] = addr;
 pdesc->word[3] |= FIELD_PREP(WORD3_DOUT_SIZE, size) |
   FIELD_PREP(WORD3_DOUT_LAST_IND, write_enable);
}
