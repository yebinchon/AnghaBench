
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chunksize; } ;
struct mddev {TYPE_1__ bitmap_info; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t
chunksize_show(struct mddev *mddev, char *page)
{
 return sprintf(page, "%lu\n", mddev->bitmap_info.chunksize);
}
