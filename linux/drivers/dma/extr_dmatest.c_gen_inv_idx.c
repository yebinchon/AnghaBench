
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int PATTERN_COUNT_MASK ;
 int PATTERN_MEMSET_IDX ;

__attribute__((used)) static inline u8 gen_inv_idx(u8 index, bool is_memset)
{
 u8 val = is_memset ? PATTERN_MEMSET_IDX : index;

 return ~val & PATTERN_COUNT_MASK;
}
