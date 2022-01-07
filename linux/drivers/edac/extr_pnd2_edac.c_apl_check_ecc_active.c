
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APL_NUM_CHANNELS ;
 int BIT (int) ;
 int EINVAL ;
 int chan_mask ;
 scalar_t__ check_channel (int) ;

__attribute__((used)) static int apl_check_ecc_active(void)
{
 int i, ret = 0;


 for (i = 0; i < APL_NUM_CHANNELS; i++)
  if (chan_mask & BIT(i))
   ret += check_channel(i);
 return ret ? -EINVAL : 0;
}
