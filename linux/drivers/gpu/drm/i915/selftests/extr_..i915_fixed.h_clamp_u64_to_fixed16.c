
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ uint_fixed_16_16_t ;
typedef scalar_t__ u64 ;
typedef int u32 ;


 scalar_t__ U32_MAX ;
 int WARN_ON (int) ;

__attribute__((used)) static inline uint_fixed_16_16_t clamp_u64_to_fixed16(u64 val)
{
 uint_fixed_16_16_t fp = { .val = (u32)val };

 WARN_ON(val > U32_MAX);

 return fp;
}
