
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ uint_fixed_16_16_t ;
typedef int u32 ;


 int DIV_ROUND_UP (int ,int) ;

__attribute__((used)) static inline u32 fixed16_to_u32_round_up(uint_fixed_16_16_t fp)
{
 return DIV_ROUND_UP(fp.val, 1 << 16);
}
