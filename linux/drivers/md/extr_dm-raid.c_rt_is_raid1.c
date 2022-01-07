
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_type {int level; } ;



__attribute__((used)) static bool rt_is_raid1(struct raid_type *rt)
{
 return rt->level == 1;
}
