
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_reclaim {struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;


 unsigned int DMZ_RECLAIM_HIGH_UNMAP_RND ;
 unsigned int DMZ_RECLAIM_LOW_UNMAP_RND ;
 unsigned int dmz_nr_rnd_zones (struct dmz_metadata*) ;
 unsigned int dmz_nr_unmap_rnd_zones (struct dmz_metadata*) ;
 scalar_t__ dmz_target_idle (struct dmz_reclaim*) ;

__attribute__((used)) static bool dmz_should_reclaim(struct dmz_reclaim *zrc)
{
 struct dmz_metadata *zmd = zrc->metadata;
 unsigned int nr_rnd = dmz_nr_rnd_zones(zmd);
 unsigned int nr_unmap_rnd = dmz_nr_unmap_rnd_zones(zmd);
 unsigned int p_unmap_rnd = nr_unmap_rnd * 100 / nr_rnd;


 if (dmz_target_idle(zrc) && nr_unmap_rnd < nr_rnd)
  return 1;


 if (p_unmap_rnd >= DMZ_RECLAIM_HIGH_UNMAP_RND)
  return 0;





 return p_unmap_rnd <= DMZ_RECLAIM_LOW_UNMAP_RND;
}
