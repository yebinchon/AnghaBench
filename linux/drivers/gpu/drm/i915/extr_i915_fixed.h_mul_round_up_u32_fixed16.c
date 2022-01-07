
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ uint_fixed_16_16_t ;
typedef scalar_t__ u64 ;
typedef int u32 ;


 scalar_t__ DIV_ROUND_UP_ULL (scalar_t__,int) ;
 scalar_t__ U32_MAX ;
 int WARN_ON (int) ;
 scalar_t__ mul_u32_u32 (int ,int ) ;

__attribute__((used)) static inline u32 mul_round_up_u32_fixed16(u32 val, uint_fixed_16_16_t mul)
{
 u64 tmp;

 tmp = mul_u32_u32(val, mul.val);
 tmp = DIV_ROUND_UP_ULL(tmp, 1 << 16);
 WARN_ON(tmp > U32_MAX);

 return (u32)tmp;
}
