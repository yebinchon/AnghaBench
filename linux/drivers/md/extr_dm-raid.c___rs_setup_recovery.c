
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* recovery_cp; } ;
struct raid_set {int ctr_flags; TYPE_1__ md; } ;
typedef void* sector_t ;


 void* MaxSector ;
 int __CTR_FLAG_NOSYNC ;
 scalar_t__ rs_is_raid0 (struct raid_set*) ;
 scalar_t__ rs_is_raid6 (struct raid_set*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void __rs_setup_recovery(struct raid_set *rs, sector_t dev_sectors)
{

 if (rs_is_raid0(rs))
  rs->md.recovery_cp = MaxSector;





 else if (rs_is_raid6(rs))
  rs->md.recovery_cp = dev_sectors;




 else
  rs->md.recovery_cp = test_bit(__CTR_FLAG_NOSYNC, &rs->ctr_flags)
         ? MaxSector : dev_sectors;
}
