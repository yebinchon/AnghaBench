
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ uint_fixed_16_16_t ;
typedef int u64 ;
typedef scalar_t__ u32 ;


 int DIV_ROUND_UP_ULL (int,int ) ;
 int U32_MAX ;
 int WARN_ON (int) ;

__attribute__((used)) static inline u32 div_round_up_u32_fixed16(u32 val, uint_fixed_16_16_t d)
{
 u64 tmp;

 tmp = (u64)val << 16;
 tmp = DIV_ROUND_UP_ULL(tmp, d.val);
 WARN_ON(tmp > U32_MAX);

 return (u32)tmp;
}
