
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {scalar_t__ suspend_lo; scalar_t__ suspend_hi; scalar_t__ suspended; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;


 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 scalar_t__ bio_end_sector (struct bio*) ;

__attribute__((used)) static bool is_suspended(struct mddev *mddev, struct bio *bio)
{
 if (mddev->suspended)
  return 1;
 if (bio_data_dir(bio) != WRITE)
  return 0;
 if (mddev->suspend_lo >= mddev->suspend_hi)
  return 0;
 if (bio->bi_iter.bi_sector >= mddev->suspend_hi)
  return 0;
 if (bio_end_sector(bio) < mddev->suspend_lo)
  return 0;
 return 1;
}
