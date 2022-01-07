
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_ib_iboe {int nb; } ;
struct hns_roce_dev {int active; int ib_dev; struct hns_roce_ib_iboe iboe; } ;


 int ib_unregister_device (int *) ;
 int unregister_netdevice_notifier (int *) ;

__attribute__((used)) static void hns_roce_unregister_device(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_ib_iboe *iboe = &hr_dev->iboe;

 hr_dev->active = 0;
 unregister_netdevice_notifier(&iboe->nb);
 ib_unregister_device(&hr_dev->ib_dev);
}
