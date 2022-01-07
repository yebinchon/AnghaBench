
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;



uint32_t phm_get_lowest_enabled_level(struct pp_hwmgr *hwmgr, uint32_t mask)
{
 uint32_t level = 0;

 while (0 == (mask & (1 << level)))
  level++;

 return level;
}
