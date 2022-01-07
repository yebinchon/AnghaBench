
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int refcnt; } ;


 int refcount_dec (int *) ;
 int smp_mb__after_atomic () ;

void nitrox_put_device(struct nitrox_device *ndev)
{
 if (!ndev)
  return;

 refcount_dec(&ndev->refcnt);

 smp_mb__after_atomic();
}
