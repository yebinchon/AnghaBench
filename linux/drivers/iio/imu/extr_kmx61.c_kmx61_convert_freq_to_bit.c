
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; int val2; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* kmx61_samp_freq_table ;

__attribute__((used)) static int kmx61_convert_freq_to_bit(int val, int val2)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(kmx61_samp_freq_table); i++)
  if (val == kmx61_samp_freq_table[i].val &&
      val2 == kmx61_samp_freq_table[i].val2)
   return i;
 return -EINVAL;
}
