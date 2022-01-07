
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int sb_loaded; int flags; int mddev; int raid_disk; int sb_page; } ;


 int BUG_ON (int) ;
 int DMERR (char*,int ) ;
 int EIO ;
 int Faulty ;
 int REQ_OP_READ ;
 int md_error (int ,struct md_rdev*) ;
 int set_bit (int ,int *) ;
 int sync_page_io (struct md_rdev*,int ,int,int ,int ,int ,int) ;

__attribute__((used)) static int read_disk_sb(struct md_rdev *rdev, int size, bool force_reload)
{
 BUG_ON(!rdev->sb_page);

 if (rdev->sb_loaded && !force_reload)
  return 0;

 rdev->sb_loaded = 0;

 if (!sync_page_io(rdev, 0, size, rdev->sb_page, REQ_OP_READ, 0, 1)) {
  DMERR("Failed to read superblock of device at position %d",
        rdev->raid_disk);
  md_error(rdev->mddev, rdev);
  set_bit(Faulty, &rdev->flags);
  return -EIO;
 }

 rdev->sb_loaded = 1;

 return 0;
}
