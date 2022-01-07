
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int level; } ;
struct raid_set {TYPE_1__ md; } ;


 int __within_range (int ,int,int) ;

__attribute__((used)) static bool rs_is_raid456(struct raid_set *rs)
{
 return __within_range(rs->md.level, 4, 6);
}
