
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1bio {int state; int remaining; } ;


 int R1BIO_MadeGood ;
 int R1BIO_WriteError ;
 int atomic_dec_and_test (int *) ;
 int close_write (struct r1bio*) ;
 int raid_end_bio_io (struct r1bio*) ;
 int reschedule_retry (struct r1bio*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void r1_bio_write_done(struct r1bio *r1_bio)
{
 if (!atomic_dec_and_test(&r1_bio->remaining))
  return;

 if (test_bit(R1BIO_WriteError, &r1_bio->state))
  reschedule_retry(r1_bio);
 else {
  close_write(r1_bio);
  if (test_bit(R1BIO_MadeGood, &r1_bio->state))
   reschedule_retry(r1_bio);
  else
   raid_end_bio_io(r1_bio);
 }
}
