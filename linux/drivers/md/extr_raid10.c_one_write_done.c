
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10bio {int state; int remaining; } ;


 int R10BIO_MadeGood ;
 int R10BIO_WriteError ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int close_write (struct r10bio*) ;
 int raid_end_bio_io (struct r10bio*) ;
 int reschedule_retry (struct r10bio*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void one_write_done(struct r10bio *r10_bio)
{
 if (atomic_dec_and_test(&r10_bio->remaining)) {
  if (test_bit(R10BIO_WriteError, &r10_bio->state))
   reschedule_retry(r10_bio);
  else {
   close_write(r10_bio);
   if (test_bit(R10BIO_MadeGood, &r10_bio->state))
    reschedule_retry(r10_bio);
   else
    raid_end_bio_io(r10_bio);
  }
 }
}
