
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int sync_set; } ;
struct bio {int dummy; } ;


 int GFP_NOIO ;
 struct bio* bio_alloc (int ,int) ;
 struct bio* bio_alloc_bioset (int ,int,int *) ;
 int bioset_initialized (int *) ;

__attribute__((used)) static struct bio *md_bio_alloc_sync(struct mddev *mddev)
{
 if (!mddev || !bioset_initialized(&mddev->sync_set))
  return bio_alloc(GFP_NOIO, 1);

 return bio_alloc_bioset(GFP_NOIO, 1, &mddev->sync_set);
}
