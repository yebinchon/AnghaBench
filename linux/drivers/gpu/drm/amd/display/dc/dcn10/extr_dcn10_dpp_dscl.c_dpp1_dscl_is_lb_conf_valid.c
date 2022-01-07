
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool dpp1_dscl_is_lb_conf_valid(int ceil_vratio, int num_partitions, int vtaps)
{
 if (ceil_vratio > 2)
  return vtaps <= (num_partitions - ceil_vratio + 2);
 else
  return vtaps <= num_partitions;
}
