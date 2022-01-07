
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1conf {int dummy; } ;
struct r1bio {int sector; int state; TYPE_1__* mddev; struct bio* master_bio; } ;
struct bio {int bi_status; } ;
struct TYPE_2__ {struct r1conf* private; } ;


 int BLK_STS_IOERR ;
 int R1BIO_Uptodate ;
 int allow_barrier (struct r1conf*,int ) ;
 int bio_endio (struct bio*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void call_bio_endio(struct r1bio *r1_bio)
{
 struct bio *bio = r1_bio->master_bio;
 struct r1conf *conf = r1_bio->mddev->private;

 if (!test_bit(R1BIO_Uptodate, &r1_bio->state))
  bio->bi_status = BLK_STS_IOERR;

 bio_endio(bio);




 allow_barrier(conf, r1_bio->sector);
}
