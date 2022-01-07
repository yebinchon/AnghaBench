
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int badblocks; } ;
typedef int ssize_t ;


 int badblocks_show (int *,char*,int) ;

__attribute__((used)) static ssize_t ubb_show(struct md_rdev *rdev, char *page)
{
 return badblocks_show(&rdev->badblocks, page, 1);
}
