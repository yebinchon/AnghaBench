
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hfi1_devdata {int verbs_dev; } ;


 int flush_workqueue (int ) ;
 int hfi1_dbg_ibdev_exit (int *) ;
 int hfi1_device_remove (struct hfi1_devdata*) ;
 int hfi1_unregister_ib_device (struct hfi1_devdata*) ;
 int hfi1_vnic_cleanup (struct hfi1_devdata*) ;
 int ib_wq ;
 struct hfi1_devdata* pci_get_drvdata (struct pci_dev*) ;
 int postinit_cleanup (struct hfi1_devdata*) ;
 int shutdown_device (struct hfi1_devdata*) ;
 int stop_timers (struct hfi1_devdata*) ;
 int wait_for_clients (struct hfi1_devdata*) ;

__attribute__((used)) static void remove_one(struct pci_dev *pdev)
{
 struct hfi1_devdata *dd = pci_get_drvdata(pdev);


 hfi1_dbg_ibdev_exit(&dd->verbs_dev);


 hfi1_device_remove(dd);


 wait_for_clients(dd);


 hfi1_unregister_ib_device(dd);


 hfi1_vnic_cleanup(dd);





 shutdown_device(dd);

 stop_timers(dd);


 flush_workqueue(ib_wq);

 postinit_cleanup(dd);
}
