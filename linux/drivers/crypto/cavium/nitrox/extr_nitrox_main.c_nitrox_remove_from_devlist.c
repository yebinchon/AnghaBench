
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int list; } ;


 int devlist_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_devices ;

__attribute__((used)) static void nitrox_remove_from_devlist(struct nitrox_device *ndev)
{
 mutex_lock(&devlist_lock);
 list_del(&ndev->list);
 num_devices--;
 mutex_unlock(&devlist_lock);
}
