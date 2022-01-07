
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r10conf {int dummy; } ;
struct r10bio {int state; TYPE_1__* mddev; struct bio* master_bio; } ;
struct bio {int bi_status; } ;
struct TYPE_2__ {struct r10conf* private; } ;


 int BLK_STS_IOERR ;
 int R10BIO_Uptodate ;
 int allow_barrier (struct r10conf*) ;
 int bio_endio (struct bio*) ;
 int free_r10bio (struct r10bio*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void raid_end_bio_io(struct r10bio *r10_bio)
{
 struct bio *bio = r10_bio->master_bio;
 struct r10conf *conf = r10_bio->mddev->private;

 if (!test_bit(R10BIO_Uptodate, &r10_bio->state))
  bio->bi_status = BLK_STS_IOERR;

 bio_endio(bio);




 allow_barrier(conf);

 free_r10bio(r10_bio);
}
