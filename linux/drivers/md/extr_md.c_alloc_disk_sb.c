
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int sb_page; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alloc_page (int ) ;

__attribute__((used)) static int alloc_disk_sb(struct md_rdev *rdev)
{
 rdev->sb_page = alloc_page(GFP_KERNEL);
 if (!rdev->sb_page)
  return -ENOMEM;
 return 0;
}
