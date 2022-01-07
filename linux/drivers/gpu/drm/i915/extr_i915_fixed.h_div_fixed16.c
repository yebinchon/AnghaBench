
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_fixed_16_16_t ;
typedef int u64 ;
typedef scalar_t__ u32 ;


 int DIV_ROUND_UP_ULL (int,scalar_t__) ;
 int clamp_u64_to_fixed16 (int) ;

__attribute__((used)) static inline uint_fixed_16_16_t div_fixed16(u32 val, u32 d)
{
 u64 tmp;

 tmp = (u64)val << 16;
 tmp = DIV_ROUND_UP_ULL(tmp, d);

 return clamp_u64_to_fixed16(tmp);
}
