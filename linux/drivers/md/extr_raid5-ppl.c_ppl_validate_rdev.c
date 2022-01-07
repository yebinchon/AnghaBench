
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; scalar_t__ sector; int offset; } ;
struct md_rdev {scalar_t__ data_offset; scalar_t__ sectors; int sb_size; TYPE_1__ ppl; int bdev; TYPE_2__* mddev; } ;
struct TYPE_4__ {int external; } ;


 int BDEVNAME_SIZE ;
 int EINVAL ;
 int ENOSPC ;
 int PPL_HEADER_SIZE ;
 int STRIPE_SECTORS ;
 int bdevname (int ,char*) ;
 int mdname (TYPE_2__*) ;
 int pr_warn (char*,int ,int ) ;
 int rounddown (int,int ) ;

__attribute__((used)) static int ppl_validate_rdev(struct md_rdev *rdev)
{
 char b[BDEVNAME_SIZE];
 int ppl_data_sectors;
 int ppl_size_new;







 ppl_data_sectors = rdev->ppl.size - (PPL_HEADER_SIZE >> 9);

 if (ppl_data_sectors > 0)
  ppl_data_sectors = rounddown(ppl_data_sectors, STRIPE_SECTORS);

 if (ppl_data_sectors <= 0) {
  pr_warn("md/raid:%s: PPL space too small on %s\n",
   mdname(rdev->mddev), bdevname(rdev->bdev, b));
  return -ENOSPC;
 }

 ppl_size_new = ppl_data_sectors + (PPL_HEADER_SIZE >> 9);

 if ((rdev->ppl.sector < rdev->data_offset &&
      rdev->ppl.sector + ppl_size_new > rdev->data_offset) ||
     (rdev->ppl.sector >= rdev->data_offset &&
      rdev->data_offset + rdev->sectors > rdev->ppl.sector)) {
  pr_warn("md/raid:%s: PPL space overlaps with data on %s\n",
   mdname(rdev->mddev), bdevname(rdev->bdev, b));
  return -EINVAL;
 }

 if (!rdev->mddev->external &&
     ((rdev->ppl.offset > 0 && rdev->ppl.offset < (rdev->sb_size >> 9)) ||
      (rdev->ppl.offset <= 0 && rdev->ppl.offset + ppl_size_new > 0))) {
  pr_warn("md/raid:%s: PPL space overlaps with superblock on %s\n",
   mdname(rdev->mddev), bdevname(rdev->bdev, b));
  return -EINVAL;
 }

 rdev->ppl.size = ppl_size_new;

 return 0;
}
