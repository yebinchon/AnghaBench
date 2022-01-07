
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10bio {int master_bio; int sectors; int mddev; int remaining; } ;


 int atomic_dec_and_test (int *) ;
 int bio_put (int ) ;
 int md_done_sync (int ,int ,int) ;
 int put_buf (struct r10bio*) ;

__attribute__((used)) static void end_reshape_request(struct r10bio *r10_bio)
{
 if (!atomic_dec_and_test(&r10_bio->remaining))
  return;
 md_done_sync(r10_bio->mddev, r10_bio->sectors, 1);
 bio_put(r10_bio->master_bio);
 put_buf(r10_bio);
}
