
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int degraded; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
degraded_show(struct mddev *mddev, char *page)
{
 return sprintf(page, "%d\n", mddev->degraded);
}
