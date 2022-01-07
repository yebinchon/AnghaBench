
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int gendisk; } ;
struct md_rdev {TYPE_1__* bdev; } ;
struct blk_integrity {int dummy; } ;
struct TYPE_2__ {int bd_disk; } ;


 int BDEVNAME_SIZE ;
 int ENXIO ;
 int bdevname (TYPE_1__*,char*) ;
 struct blk_integrity* blk_get_integrity (int ) ;
 scalar_t__ blk_integrity_compare (int ,int ) ;
 int mdname (struct mddev*) ;
 int pr_err (char*,int ,int ) ;

int md_integrity_add_rdev(struct md_rdev *rdev, struct mddev *mddev)
{
 struct blk_integrity *bi_mddev;
 char name[BDEVNAME_SIZE];

 if (!mddev->gendisk)
  return 0;

 bi_mddev = blk_get_integrity(mddev->gendisk);

 if (!bi_mddev)
  return 0;

 if (blk_integrity_compare(mddev->gendisk, rdev->bdev->bd_disk) != 0) {
  pr_err("%s: incompatible integrity profile for %s\n",
         mdname(mddev), bdevname(rdev->bdev, name));
  return -ENXIO;
 }

 return 0;
}
