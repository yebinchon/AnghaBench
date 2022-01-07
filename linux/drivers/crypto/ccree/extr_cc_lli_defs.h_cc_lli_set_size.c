
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int FIELD_PREP (int ,int ) ;
 int LLI_SIZE_MASK ;
 size_t LLI_WORD1_OFFSET ;

__attribute__((used)) static inline void cc_lli_set_size(u32 *lli_p, u16 size)
{
 lli_p[LLI_WORD1_OFFSET] &= ~LLI_SIZE_MASK;
 lli_p[LLI_WORD1_OFFSET] |= FIELD_PREP(LLI_SIZE_MASK, size);
}
