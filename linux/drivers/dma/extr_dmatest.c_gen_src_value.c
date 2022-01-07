
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int PATTERN_SRC ;
 int gen_inv_idx (int,int) ;

__attribute__((used)) static inline u8 gen_src_value(u8 index, bool is_memset)
{
 return PATTERN_SRC | gen_inv_idx(index, is_memset);
}
