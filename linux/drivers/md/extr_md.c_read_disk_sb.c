
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int sb_loaded; int bdev; int sb_page; } ;


 int BDEVNAME_SIZE ;
 int EINVAL ;
 int REQ_OP_READ ;
 int bdevname (int ,char*) ;
 int pr_err (char*,int ) ;
 int sync_page_io (struct md_rdev*,int ,int,int ,int ,int ,int) ;

__attribute__((used)) static int read_disk_sb(struct md_rdev *rdev, int size)
{
 char b[BDEVNAME_SIZE];

 if (rdev->sb_loaded)
  return 0;

 if (!sync_page_io(rdev, 0, size, rdev->sb_page, REQ_OP_READ, 0, 1))
  goto fail;
 rdev->sb_loaded = 1;
 return 0;

fail:
 pr_err("md: disabled device %s, could not read superblock.\n",
        bdevname(rdev->bdev,b));
 return -EINVAL;
}
