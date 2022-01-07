
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_type {int level; } ;


 int __within_range (int ,int,int) ;

__attribute__((used)) static bool rt_is_raid45(struct raid_type *rt)
{
 return __within_range(rt->level, 4, 5);
}
