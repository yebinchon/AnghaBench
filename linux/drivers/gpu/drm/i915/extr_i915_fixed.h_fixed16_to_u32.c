
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ uint_fixed_16_16_t ;
typedef int u32 ;



__attribute__((used)) static inline u32 fixed16_to_u32(uint_fixed_16_16_t fp)
{
 return fp.val >> 16;
}
