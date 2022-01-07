
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_zone {int flags; } ;


 int DMZ_RECLAIM ;
 int WARN_ON (int) ;
 int clear_bit_unlock (int ,int *) ;
 int dmz_in_reclaim (struct dm_zone*) ;
 int dmz_is_active (struct dm_zone*) ;
 int smp_mb__after_atomic () ;
 int wake_up_bit (int *,int ) ;

void dmz_unlock_zone_reclaim(struct dm_zone *zone)
{
 WARN_ON(dmz_is_active(zone));
 WARN_ON(!dmz_in_reclaim(zone));

 clear_bit_unlock(DMZ_RECLAIM, &zone->flags);
 smp_mb__after_atomic();
 wake_up_bit(&zone->flags, DMZ_RECLAIM);
}
