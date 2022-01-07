
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_zone {int flags; } ;


 int DMZ_RECLAIM ;
 scalar_t__ dmz_is_active (struct dm_zone*) ;
 int test_and_set_bit (int ,int *) ;

int dmz_lock_zone_reclaim(struct dm_zone *zone)
{

 if (dmz_is_active(zone))
  return 0;

 return !test_and_set_bit(DMZ_RECLAIM, &zone->flags);
}
