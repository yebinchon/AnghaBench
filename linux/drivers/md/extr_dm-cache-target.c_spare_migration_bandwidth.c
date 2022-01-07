
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int sectors_per_block; scalar_t__ migration_threshold; int nr_io_migrations; int tracker; } ;
typedef scalar_t__ sector_t ;
typedef enum busy { ____Placeholder_busy } busy ;


 int BUSY ;
 int HZ ;
 int IDLE ;
 int atomic_read (int *) ;
 int iot_idle_for (int *,int ) ;

__attribute__((used)) static enum busy spare_migration_bandwidth(struct cache *cache)
{
 bool idle = iot_idle_for(&cache->tracker, HZ);
 sector_t current_volume = (atomic_read(&cache->nr_io_migrations) + 1) *
  cache->sectors_per_block;

 if (idle && current_volume <= cache->migration_threshold)
  return IDLE;
 else
  return BUSY;
}
