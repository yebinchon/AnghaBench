
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raid_set {unsigned int raid_disks; TYPE_1__* raid_type; } ;
struct TYPE_2__ {unsigned int parity_devs; } ;



__attribute__((used)) static unsigned int rs_data_stripes(struct raid_set *rs)
{
 return rs->raid_disks - rs->raid_type->parity_devs;
}
