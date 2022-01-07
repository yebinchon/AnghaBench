
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int skip_copy; } ;
struct mddev {int lock; struct r5conf* private; } ;
typedef int ssize_t ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
raid5_show_skip_copy(struct mddev *mddev, char *page)
{
 struct r5conf *conf;
 int ret = 0;
 spin_lock(&mddev->lock);
 conf = mddev->private;
 if (conf)
  ret = sprintf(page, "%d\n", conf->skip_copy);
 spin_unlock(&mddev->lock);
 return ret;
}
