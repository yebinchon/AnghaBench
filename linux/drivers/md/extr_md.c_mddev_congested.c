
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ suspended; struct md_personality* pers; } ;
struct md_personality {int (* congested ) (struct mddev*,int) ;} ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct mddev*,int) ;

int mddev_congested(struct mddev *mddev, int bits)
{
 struct md_personality *pers = mddev->pers;
 int ret = 0;

 rcu_read_lock();
 if (mddev->suspended)
  ret = 1;
 else if (pers && pers->congested)
  ret = pers->congested(mddev, bits);
 rcu_read_unlock();
 return ret;
}
