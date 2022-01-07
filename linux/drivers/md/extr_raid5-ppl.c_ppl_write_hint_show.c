
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {struct ppl_conf* log_private; } ;
struct ppl_conf {int write_hint; } ;
struct mddev {int lock; struct r5conf* private; } ;
typedef size_t ssize_t ;


 scalar_t__ raid5_has_ppl (struct r5conf*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 size_t sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
ppl_write_hint_show(struct mddev *mddev, char *buf)
{
 size_t ret = 0;
 struct r5conf *conf;
 struct ppl_conf *ppl_conf = ((void*)0);

 spin_lock(&mddev->lock);
 conf = mddev->private;
 if (conf && raid5_has_ppl(conf))
  ppl_conf = conf->log_private;
 ret = sprintf(buf, "%d\n", ppl_conf ? ppl_conf->write_hint : 0);
 spin_unlock(&mddev->lock);

 return ret;
}
