
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mmc35240_data {int dummy; } ;
struct TYPE_3__ {int val; int val2; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* mmc35240_samp_freq ;

__attribute__((used)) static int mmc35240_get_samp_freq_index(struct mmc35240_data *data,
     int val, int val2)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mmc35240_samp_freq); i++)
  if (mmc35240_samp_freq[i].val == val &&
      mmc35240_samp_freq[i].val2 == val2)
   return i;
 return -EINVAL;
}
