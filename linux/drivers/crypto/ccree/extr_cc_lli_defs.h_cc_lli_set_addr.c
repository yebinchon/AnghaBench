
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;


 int FIELD_PREP (int,int) ;
 int LLI_HADDR_MASK ;
 size_t LLI_WORD0_OFFSET ;
 size_t LLI_WORD1_OFFSET ;
 int U32_MAX ;

__attribute__((used)) static inline void cc_lli_set_addr(u32 *lli_p, dma_addr_t addr)
{
 lli_p[LLI_WORD0_OFFSET] = (addr & U32_MAX);




}
