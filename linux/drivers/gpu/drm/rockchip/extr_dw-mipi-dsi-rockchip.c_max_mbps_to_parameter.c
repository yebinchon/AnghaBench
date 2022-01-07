
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int max_mbps; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* dppa_map ;

__attribute__((used)) static int max_mbps_to_parameter(unsigned int max_mbps)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dppa_map); i++)
  if (dppa_map[i].max_mbps >= max_mbps)
   return i;

 return -EINVAL;
}
