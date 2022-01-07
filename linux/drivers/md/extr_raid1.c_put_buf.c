
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r1conf {int raid_disks; int r1buf_pool; TYPE_1__* mirrors; } ;
struct r1bio {TYPE_2__* mddev; struct bio** bios; int sector; } ;
struct bio {scalar_t__ bi_end_io; } ;
typedef int sector_t ;
struct TYPE_4__ {struct r1conf* private; } ;
struct TYPE_3__ {int rdev; } ;


 int lower_barrier (struct r1conf*,int ) ;
 int mempool_free (struct r1bio*,int *) ;
 int rdev_dec_pending (int ,TYPE_2__*) ;

__attribute__((used)) static void put_buf(struct r1bio *r1_bio)
{
 struct r1conf *conf = r1_bio->mddev->private;
 sector_t sect = r1_bio->sector;
 int i;

 for (i = 0; i < conf->raid_disks * 2; i++) {
  struct bio *bio = r1_bio->bios[i];
  if (bio->bi_end_io)
   rdev_dec_pending(conf->mirrors[i].rdev, r1_bio->mddev);
 }

 mempool_free(r1_bio, &conf->r1buf_pool);

 lower_barrier(conf, sect);
}
