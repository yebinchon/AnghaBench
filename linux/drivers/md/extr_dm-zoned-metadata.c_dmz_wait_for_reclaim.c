
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int dummy; } ;
struct dm_zone {int flags; } ;


 int DMZ_RECLAIM ;
 int HZ ;
 int TASK_UNINTERRUPTIBLE ;
 int dmz_lock_map (struct dmz_metadata*) ;
 int dmz_lock_metadata (struct dmz_metadata*) ;
 int dmz_unlock_map (struct dmz_metadata*) ;
 int dmz_unlock_metadata (struct dmz_metadata*) ;
 int wait_on_bit_timeout (int *,int ,int ,int ) ;

__attribute__((used)) static void dmz_wait_for_reclaim(struct dmz_metadata *zmd, struct dm_zone *zone)
{
 dmz_unlock_map(zmd);
 dmz_unlock_metadata(zmd);
 wait_on_bit_timeout(&zone->flags, DMZ_RECLAIM, TASK_UNINTERRUPTIBLE, HZ);
 dmz_lock_metadata(zmd);
 dmz_lock_map(zmd);
}
