
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;


 int __md_stop_writes (struct mddev*) ;
 int mddev_lock_nointr (struct mddev*) ;
 int mddev_unlock (struct mddev*) ;

void md_stop_writes(struct mddev *mddev)
{
 mddev_lock_nointr(mddev);
 __md_stop_writes(mddev);
 mddev_unlock(mddev);
}
