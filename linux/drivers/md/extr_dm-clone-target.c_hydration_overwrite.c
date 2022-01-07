
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_clone_region_hydration {TYPE_1__* clone; int overwrite_bio_end_io; struct bio* overwrite_bio; } ;
struct bio {struct dm_clone_region_hydration* bi_private; int bi_end_io; } ;
struct TYPE_2__ {int hydrations_in_flight; } ;


 int atomic_inc (int *) ;
 int generic_make_request (struct bio*) ;
 int overwrite_endio ;

__attribute__((used)) static void hydration_overwrite(struct dm_clone_region_hydration *hd, struct bio *bio)
{





 hd->overwrite_bio = bio;
 hd->overwrite_bio_end_io = bio->bi_end_io;

 bio->bi_end_io = overwrite_endio;
 bio->bi_private = hd;

 atomic_inc(&hd->clone->hydrations_in_flight);
 generic_make_request(bio);
}
