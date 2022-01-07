
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int badblocks; int * bb_page; scalar_t__ sectors; scalar_t__ sb_start; int * sb_page; scalar_t__ sb_loaded; } ;


 int badblocks_exit (int *) ;
 int put_page (int *) ;

void md_rdev_clear(struct md_rdev *rdev)
{
 if (rdev->sb_page) {
  put_page(rdev->sb_page);
  rdev->sb_loaded = 0;
  rdev->sb_page = ((void*)0);
  rdev->sb_start = 0;
  rdev->sectors = 0;
 }
 if (rdev->bb_page) {
  put_page(rdev->bb_page);
  rdev->bb_page = ((void*)0);
 }
 badblocks_exit(&rdev->badblocks);
}
