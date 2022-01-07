
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNV_NUM_CHANNELS ;
 int EINVAL ;
 scalar_t__ check_unit (int) ;

__attribute__((used)) static int dnv_check_ecc_active(void)
{
 int i, ret = 0;

 for (i = 0; i < DNV_NUM_CHANNELS; i++)
  ret += check_unit(i);
 return ret ? -EINVAL : 0;
}
