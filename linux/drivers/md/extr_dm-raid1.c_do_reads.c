
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror_set {int rh; } ;
struct mirror {int error_count; } ;
struct bio_list {int dummy; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int region_t ;


 scalar_t__ atomic_read (int *) ;
 int bio_io_error (struct bio*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 struct mirror* choose_mirror (struct mirror_set*,int ) ;
 int dm_rh_bio_to_region (int ,struct bio*) ;
 struct mirror* get_default_mirror (struct mirror_set*) ;
 scalar_t__ likely (struct mirror*) ;
 int read_async_bio (struct mirror*,struct bio*) ;
 struct mirror* region_in_sync (struct mirror_set*,int ,int) ;

__attribute__((used)) static void do_reads(struct mirror_set *ms, struct bio_list *reads)
{
 region_t region;
 struct bio *bio;
 struct mirror *m;

 while ((bio = bio_list_pop(reads))) {
  region = dm_rh_bio_to_region(ms->rh, bio);
  m = get_default_mirror(ms);




  if (likely(region_in_sync(ms, region, 1)))
   m = choose_mirror(ms, bio->bi_iter.bi_sector);
  else if (m && atomic_read(&m->error_count))
   m = ((void*)0);

  if (likely(m))
   read_async_bio(m, bio);
  else
   bio_io_error(bio);
 }
}
