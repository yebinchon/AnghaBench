
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; scalar_t__ file; } ;
struct mddev {TYPE_1__ bitmap_info; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
location_show(struct mddev *mddev, char *page)
{
 ssize_t len;
 if (mddev->bitmap_info.file)
  len = sprintf(page, "file");
 else if (mddev->bitmap_info.offset)
  len = sprintf(page, "%+lld", (long long)mddev->bitmap_info.offset);
 else
  len = sprintf(page, "none");
 len += sprintf(page+len, "\n");
 return len;
}
