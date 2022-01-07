
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct md_rdev {TYPE_3__* mddev; TYPE_2__* bdev; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {TYPE_1__* bd_disk; } ;
struct TYPE_4__ {int flags; } ;


 int GENHD_FL_UP ;
 int MD_BROKEN ;
 int mdname (TYPE_3__*) ;
 int pr_warn (char*,int ,char const*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline bool is_mddev_broken(struct md_rdev *rdev, const char *md_type)
{
 int flags = rdev->bdev->bd_disk->flags;

 if (!(flags & GENHD_FL_UP)) {
  if (!test_and_set_bit(MD_BROKEN, &rdev->mddev->flags))
   pr_warn("md: %s: %s array has a missing/failed member\n",
    mdname(rdev->mddev), md_type);
  return 1;
 }
 return 0;
}
