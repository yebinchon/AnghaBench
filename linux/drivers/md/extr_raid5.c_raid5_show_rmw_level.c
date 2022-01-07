
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int rmw_level; } ;
struct mddev {struct r5conf* private; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
raid5_show_rmw_level(struct mddev *mddev, char *page)
{
 struct r5conf *conf = mddev->private;
 if (conf)
  return sprintf(page, "%d\n", conf->rmw_level);
 else
  return 0;
}
