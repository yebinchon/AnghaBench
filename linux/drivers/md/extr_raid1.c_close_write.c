
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1bio {TYPE_1__* mddev; int state; int sectors; int sector; int * behind_master_bio; } ;
struct TYPE_2__ {int bitmap; } ;


 int R1BIO_BehindIO ;
 int R1BIO_Degraded ;
 int bio_free_pages (int *) ;
 int bio_put (int *) ;
 int md_bitmap_endwrite (int ,int ,int ,int,scalar_t__) ;
 int md_write_end (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void close_write(struct r1bio *r1_bio)
{

 if (test_bit(R1BIO_BehindIO, &r1_bio->state)) {
  bio_free_pages(r1_bio->behind_master_bio);
  bio_put(r1_bio->behind_master_bio);
  r1_bio->behind_master_bio = ((void*)0);
 }

 md_bitmap_endwrite(r1_bio->mddev->bitmap, r1_bio->sector,
      r1_bio->sectors,
      !test_bit(R1BIO_Degraded, &r1_bio->state),
      test_bit(R1BIO_BehindIO, &r1_bio->state));
 md_write_end(r1_bio->mddev);
}
