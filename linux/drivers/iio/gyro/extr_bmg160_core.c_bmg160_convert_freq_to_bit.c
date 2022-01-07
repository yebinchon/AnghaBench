
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int odr; int bw_bits; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* bmg160_samp_freq_table ;

__attribute__((used)) static int bmg160_convert_freq_to_bit(int val)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(bmg160_samp_freq_table); ++i) {
  if (bmg160_samp_freq_table[i].odr == val)
   return bmg160_samp_freq_table[i].bw_bits;
 }

 return -EINVAL;
}
