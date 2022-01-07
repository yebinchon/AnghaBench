
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; int val2; int odr_bits; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* kmx61_wake_up_odr_table ;

__attribute__((used)) static int kmx61_convert_wake_up_odr_to_bit(int val, int val2)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(kmx61_wake_up_odr_table); ++i)
  if (kmx61_wake_up_odr_table[i].val == val &&
   kmx61_wake_up_odr_table[i].val2 == val2)
    return kmx61_wake_up_odr_table[i].odr_bits;
 return -EINVAL;
}
