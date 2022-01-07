
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r10conf {int mddev; TYPE_1__* mirrors; } ;
struct r10bio {int remaining; int state; int sectors; TYPE_2__* mddev; } ;
struct bio {int bi_status; } ;
struct TYPE_6__ {int corrected_errors; } ;
struct TYPE_5__ {struct r10conf* private; } ;
struct TYPE_4__ {TYPE_3__* rdev; } ;


 int R10BIO_IsRecover ;
 int R10BIO_Uptodate ;
 int atomic_add (int ,int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int rdev_dec_pending (TYPE_3__*,int ) ;
 int reschedule_retry (struct r10bio*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void __end_sync_read(struct r10bio *r10_bio, struct bio *bio, int d)
{
 struct r10conf *conf = r10_bio->mddev->private;

 if (!bio->bi_status)
  set_bit(R10BIO_Uptodate, &r10_bio->state);
 else



  atomic_add(r10_bio->sectors,
      &conf->mirrors[d].rdev->corrected_errors);




 rdev_dec_pending(conf->mirrors[d].rdev, conf->mddev);
 if (test_bit(R10BIO_IsRecover, &r10_bio->state) ||
     atomic_dec_and_test(&r10_bio->remaining)) {



  reschedule_retry(r10_bio);
 }
}
