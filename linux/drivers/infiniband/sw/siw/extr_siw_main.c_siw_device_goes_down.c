
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_device {int netdev_down; int base_dev; } ;


 int INIT_WORK (int *,int ) ;
 scalar_t__ ib_device_try_get (int *) ;
 int schedule_work (int *) ;
 int siw_netdev_down ;

__attribute__((used)) static void siw_device_goes_down(struct siw_device *sdev)
{
 if (ib_device_try_get(&sdev->base_dev)) {
  INIT_WORK(&sdev->netdev_down, siw_netdev_down);
  schedule_work(&sdev->netdev_down);
 }
}
