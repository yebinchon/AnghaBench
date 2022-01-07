
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int val; } ;
typedef TYPE_1__ uint_fixed_16_16_t ;
typedef int u64 ;


 TYPE_1__ clamp_u64_to_fixed16 (int) ;
 int mul_u32_u32 (int ,int ) ;

__attribute__((used)) static inline uint_fixed_16_16_t mul_fixed16(uint_fixed_16_16_t val,
          uint_fixed_16_16_t mul)
{
 u64 tmp;

 tmp = mul_u32_u32(val.val, mul.val);
 tmp = tmp >> 16;

 return clamp_u64_to_fixed16(tmp);
}
