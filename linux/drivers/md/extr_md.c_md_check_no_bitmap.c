
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; int file; } ;
struct mddev {TYPE_2__* pers; TYPE_1__ bitmap_info; } ;
struct TYPE_4__ {int name; } ;


 int mdname (struct mddev*) ;
 int pr_warn (char*,int ,int ) ;

int md_check_no_bitmap(struct mddev *mddev)
{
 if (!mddev->bitmap_info.file && !mddev->bitmap_info.offset)
  return 0;
 pr_warn("%s: bitmaps are not supported for %s\n",
  mdname(mddev), mddev->pers->name);
 return 1;
}
