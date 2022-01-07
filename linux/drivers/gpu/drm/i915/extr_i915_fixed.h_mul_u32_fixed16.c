
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int val; } ;
typedef TYPE_1__ uint_fixed_16_16_t ;
typedef int u64 ;
typedef int u32 ;


 TYPE_1__ clamp_u64_to_fixed16 (int ) ;
 int mul_u32_u32 (int ,int ) ;

__attribute__((used)) static inline uint_fixed_16_16_t mul_u32_fixed16(u32 val, uint_fixed_16_16_t mul)
{
 u64 tmp;

 tmp = mul_u32_u32(val, mul.val);

 return clamp_u64_to_fixed16(tmp);
}
