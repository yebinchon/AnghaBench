
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int bio_set; } ;
struct bio {int dummy; } ;
typedef int gfp_t ;


 struct bio* bio_alloc (int ,int) ;
 struct bio* bio_alloc_bioset (int ,int,int *) ;
 int bioset_initialized (int *) ;

struct bio *bio_alloc_mddev(gfp_t gfp_mask, int nr_iovecs,
       struct mddev *mddev)
{
 if (!mddev || !bioset_initialized(&mddev->bio_set))
  return bio_alloc(gfp_mask, nr_iovecs);

 return bio_alloc_bioset(gfp_mask, nr_iovecs, &mddev->bio_set);
}
