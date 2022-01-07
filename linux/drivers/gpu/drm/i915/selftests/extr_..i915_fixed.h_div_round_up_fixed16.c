
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
typedef TYPE_1__ uint_fixed_16_16_t ;
typedef int u32 ;


 int DIV_ROUND_UP (int ,int ) ;

__attribute__((used)) static inline u32 div_round_up_fixed16(uint_fixed_16_16_t val,
           uint_fixed_16_16_t d)
{
 return DIV_ROUND_UP(val.val, d.val);
}
