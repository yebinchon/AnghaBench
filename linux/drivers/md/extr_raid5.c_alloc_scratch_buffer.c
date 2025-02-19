
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid5_percpu {scalar_t__ spare_page; } ;
struct r5conf {int level; int prev_chunk_sectors; int chunk_sectors; int previous_raid_disks; int raid_disks; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int STRIPE_SECTORS ;
 scalar_t__ alloc_page (int ) ;
 int free_scratch_buffer (struct r5conf*,struct raid5_percpu*) ;
 int max (int ,int ) ;
 scalar_t__ scribble_alloc (struct raid5_percpu*,int,int,int ) ;

__attribute__((used)) static int alloc_scratch_buffer(struct r5conf *conf, struct raid5_percpu *percpu)
{
 if (conf->level == 6 && !percpu->spare_page) {
  percpu->spare_page = alloc_page(GFP_KERNEL);
  if (!percpu->spare_page)
   return -ENOMEM;
 }

 if (scribble_alloc(percpu,
      max(conf->raid_disks,
          conf->previous_raid_disks),
      max(conf->chunk_sectors,
          conf->prev_chunk_sectors)
      / STRIPE_SECTORS,
      GFP_KERNEL)) {
  free_scratch_buffer(conf, percpu);
  return -ENOMEM;
 }

 return 0;
}
