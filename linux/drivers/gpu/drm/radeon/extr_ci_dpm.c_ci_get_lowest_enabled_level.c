
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;



__attribute__((used)) static u32 ci_get_lowest_enabled_level(struct radeon_device *rdev,
           u32 level_mask)
{
 u32 level = 0;

 while ((level_mask & (1 << level)) == 0)
  level++;

 return level;
}
