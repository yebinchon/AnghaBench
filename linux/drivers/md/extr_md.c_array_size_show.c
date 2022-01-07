
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ array_sectors; scalar_t__ external_size; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
array_size_show(struct mddev *mddev, char *page)
{
 if (mddev->external_size)
  return sprintf(page, "%llu\n",
          (unsigned long long)mddev->array_sectors/2);
 else
  return sprintf(page, "default\n");
}
