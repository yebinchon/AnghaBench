
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1bio {int sectors; int state; struct mddev* mddev; int remaining; } ;
struct mddev {int dummy; } ;


 int R1BIO_MadeGood ;
 int R1BIO_WriteError ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int md_done_sync (struct mddev*,int,int) ;
 int put_buf (struct r1bio*) ;
 int reschedule_retry (struct r1bio*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void put_sync_write_buf(struct r1bio *r1_bio, int uptodate)
{
 if (atomic_dec_and_test(&r1_bio->remaining)) {
  struct mddev *mddev = r1_bio->mddev;
  int s = r1_bio->sectors;

  if (test_bit(R1BIO_MadeGood, &r1_bio->state) ||
      test_bit(R1BIO_WriteError, &r1_bio->state))
   reschedule_retry(r1_bio);
  else {
   put_buf(r1_bio);
   md_done_sync(mddev, s, uptodate);
  }
 }
}
