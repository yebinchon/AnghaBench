
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ val; } ;
typedef TYPE_1__ uint_fixed_16_16_t ;



__attribute__((used)) static inline bool is_fixed16_zero(uint_fixed_16_16_t val)
{
 return val.val == 0;
}
