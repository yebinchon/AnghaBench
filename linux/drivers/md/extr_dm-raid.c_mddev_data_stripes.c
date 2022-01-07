
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int raid_disks; } ;
struct raid_set {TYPE_2__* raid_type; TYPE_1__ md; } ;
struct TYPE_4__ {unsigned int parity_devs; } ;



__attribute__((used)) static unsigned int mddev_data_stripes(struct raid_set *rs)
{
 return rs->md.raid_disks - rs->raid_type->parity_devs;
}
