
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int pool; } ;
struct remap_info {int issue_bios; int defer_bios; struct thin_c* tc; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;
typedef int dm_block_t ;


 int __remap_and_issue_shared_cell ;
 int bio_list_init (int *) ;
 struct bio* bio_list_pop (int *) ;
 int cell_visit_release (int ,int ,struct remap_info*,struct dm_bio_prison_cell*) ;
 int remap_and_issue (struct thin_c*,struct bio*,int ) ;
 int thin_defer_bio (struct thin_c*,struct bio*) ;

__attribute__((used)) static void remap_and_issue_shared_cell(struct thin_c *tc,
     struct dm_bio_prison_cell *cell,
     dm_block_t block)
{
 struct bio *bio;
 struct remap_info info;

 info.tc = tc;
 bio_list_init(&info.defer_bios);
 bio_list_init(&info.issue_bios);

 cell_visit_release(tc->pool, __remap_and_issue_shared_cell,
      &info, cell);

 while ((bio = bio_list_pop(&info.defer_bios)))
  thin_defer_bio(tc, bio);

 while ((bio = bio_list_pop(&info.issue_bios)))
  remap_and_issue(tc, bio, block);
}
