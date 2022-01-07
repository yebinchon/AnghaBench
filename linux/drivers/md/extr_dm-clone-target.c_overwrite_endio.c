
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_region_hydration {int status; int overwrite_bio_end_io; } ;
struct bio {int bi_status; int bi_end_io; struct dm_clone_region_hydration* bi_private; } ;


 int hydration_complete (struct dm_clone_region_hydration*) ;

__attribute__((used)) static void overwrite_endio(struct bio *bio)
{
 struct dm_clone_region_hydration *hd = bio->bi_private;

 bio->bi_end_io = hd->overwrite_bio_end_io;
 hd->status = bio->bi_status;

 hydration_complete(hd);
}
