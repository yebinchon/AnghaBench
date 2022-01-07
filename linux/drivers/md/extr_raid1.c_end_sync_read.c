
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1bio {int remaining; int state; int read_disk; } ;
struct bio {int bi_status; } ;


 int R1BIO_Uptodate ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct r1bio* get_resync_r1bio (struct bio*) ;
 int reschedule_retry (struct r1bio*) ;
 int set_bit (int ,int *) ;
 int update_head_pos (int ,struct r1bio*) ;

__attribute__((used)) static void end_sync_read(struct bio *bio)
{
 struct r1bio *r1_bio = get_resync_r1bio(bio);

 update_head_pos(r1_bio->read_disk, r1_bio);






 if (!bio->bi_status)
  set_bit(R1BIO_Uptodate, &r1_bio->state);

 if (atomic_dec_and_test(&r1_bio->remaining))
  reschedule_retry(r1_bio);
}
