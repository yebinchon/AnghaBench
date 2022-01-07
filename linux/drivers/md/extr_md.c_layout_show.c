
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ reshape_position; scalar_t__ layout; scalar_t__ new_layout; } ;
typedef int ssize_t ;


 scalar_t__ MaxSector ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static ssize_t
layout_show(struct mddev *mddev, char *page)
{

 if (mddev->reshape_position != MaxSector &&
     mddev->layout != mddev->new_layout)
  return sprintf(page, "%d (%d)\n",
          mddev->new_layout, mddev->layout);
 return sprintf(page, "%d\n", mddev->layout);
}
