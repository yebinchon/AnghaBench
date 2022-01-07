
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ sync_speed_max; } ;
typedef int ssize_t ;


 int speed_max (struct mddev*) ;
 int sprintf (char*,char*,int,char*) ;

__attribute__((used)) static ssize_t
sync_max_show(struct mddev *mddev, char *page)
{
 return sprintf(page, "%d (%s)\n", speed_max(mddev),
         mddev->sync_speed_max ? "local": "system");
}
