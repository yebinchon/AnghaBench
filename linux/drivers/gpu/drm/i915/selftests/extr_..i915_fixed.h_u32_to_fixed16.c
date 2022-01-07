
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ uint_fixed_16_16_t ;
typedef int u32 ;


 int U16_MAX ;
 int WARN_ON (int) ;

__attribute__((used)) static inline uint_fixed_16_16_t u32_to_fixed16(u32 val)
{
 uint_fixed_16_16_t fp = { .val = val << 16 };

 WARN_ON(val > U16_MAX);

 return fp;
}
