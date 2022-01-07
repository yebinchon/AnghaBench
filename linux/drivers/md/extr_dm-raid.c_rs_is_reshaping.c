
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ reshape_position; } ;
struct raid_set {TYPE_1__ md; } ;


 scalar_t__ MaxSector ;

__attribute__((used)) static bool rs_is_reshaping(struct raid_set *rs)
{
 return rs->md.reshape_position != MaxSector;
}
