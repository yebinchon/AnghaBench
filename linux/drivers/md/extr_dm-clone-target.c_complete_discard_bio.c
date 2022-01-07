
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {unsigned long region_shift; int flags; } ;
struct bio {int dummy; } ;


 int DM_CLONE_DISCARD_PASSDOWN ;
 int bio_endio (struct bio*) ;
 int bio_region_range (struct clone*,struct bio*,unsigned long*,unsigned long*) ;
 int generic_make_request (struct bio*) ;
 int remap_to_dest (struct clone*,struct bio*) ;
 scalar_t__ test_bit (int ,int *) ;
 int trim_bio (struct bio*,unsigned long,unsigned long) ;

__attribute__((used)) static void complete_discard_bio(struct clone *clone, struct bio *bio, bool success)
{
 unsigned long rs, re;






 if (test_bit(DM_CLONE_DISCARD_PASSDOWN, &clone->flags) && success) {
  remap_to_dest(clone, bio);
  bio_region_range(clone, bio, &rs, &re);
  trim_bio(bio, rs << clone->region_shift,
    (re - rs) << clone->region_shift);
  generic_make_request(bio);
 } else
  bio_endio(bio);
}
