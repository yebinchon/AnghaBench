
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ val; } ;
typedef TYPE_1__ uint_fixed_16_16_t ;
typedef scalar_t__ u64 ;
typedef int u32 ;


 TYPE_1__ clamp_u64_to_fixed16 (scalar_t__) ;
 TYPE_1__ u32_to_fixed16 (int ) ;

__attribute__((used)) static inline uint_fixed_16_16_t add_fixed16_u32(uint_fixed_16_16_t add1,
       u32 add2)
{
 uint_fixed_16_16_t tmp_add2 = u32_to_fixed16(add2);
 u64 tmp;

 tmp = (u64)add1.val + tmp_add2.val;

 return clamp_u64_to_fixed16(tmp);
}
