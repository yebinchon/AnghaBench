
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int new_layout; } ;
struct raid_set {TYPE_1__ md; } ;


 int __is_raid10_far (int ) ;
 scalar_t__ rs_is_raid10 (struct raid_set*) ;
 scalar_t__ rs_is_raid456 (struct raid_set*) ;

__attribute__((used)) static bool rs_is_reshapable(struct raid_set *rs)
{
 return rs_is_raid456(rs) ||
        (rs_is_raid10(rs) && !__is_raid10_far(rs->md.new_layout));
}
