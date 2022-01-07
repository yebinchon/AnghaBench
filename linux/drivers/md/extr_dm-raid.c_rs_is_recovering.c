
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ recovery_cp; scalar_t__ dev_sectors; } ;
struct raid_set {TYPE_1__ md; } ;



__attribute__((used)) static bool rs_is_recovering(struct raid_set *rs)
{
 return rs->md.recovery_cp < rs->md.dev_sectors;
}
