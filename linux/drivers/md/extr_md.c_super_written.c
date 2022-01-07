
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int sb_wait; int pending_writes; int sb_flags; } ;
struct md_rdev {int flags; struct mddev* mddev; } ;
struct bio {int bi_opf; scalar_t__ bi_status; struct md_rdev* bi_private; } ;


 int Faulty ;
 int LastDev ;
 int MD_FAILFAST ;
 int MD_SB_NEED_REWRITE ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_put (struct bio*) ;
 int clear_bit (int ,int *) ;
 int md_error (struct mddev*,struct md_rdev*) ;
 int pr_err (char*,scalar_t__) ;
 int rdev_dec_pending (struct md_rdev*,struct mddev*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void super_written(struct bio *bio)
{
 struct md_rdev *rdev = bio->bi_private;
 struct mddev *mddev = rdev->mddev;

 if (bio->bi_status) {
  pr_err("md: super_written gets error=%d\n", bio->bi_status);
  md_error(mddev, rdev);
  if (!test_bit(Faulty, &rdev->flags)
      && (bio->bi_opf & MD_FAILFAST)) {
   set_bit(MD_SB_NEED_REWRITE, &mddev->sb_flags);
   set_bit(LastDev, &rdev->flags);
  }
 } else
  clear_bit(LastDev, &rdev->flags);

 if (atomic_dec_and_test(&mddev->pending_writes))
  wake_up(&mddev->sb_wait);
 rdev_dec_pending(rdev, mddev);
 bio_put(bio);
}
