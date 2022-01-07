
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;


 size_t OP_ALG_ALGSEL_SHIFT ;
 size_t OP_ALG_ALGSEL_SUBMASK ;

__attribute__((used)) static inline u32 split_key_len(u32 hash)
{

 static const u8 mdpadlen[] = { 16, 20, 32, 32, 64, 64 };
 u32 idx;

 idx = (hash & OP_ALG_ALGSEL_SUBMASK) >> OP_ALG_ALGSEL_SHIFT;

 return (u32)(mdpadlen[idx] * 2);
}
