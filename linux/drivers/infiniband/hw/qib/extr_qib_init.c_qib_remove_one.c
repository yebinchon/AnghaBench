
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;
struct pci_dev {int dummy; } ;


 int flush_workqueue (int ) ;
 int ib_wq ;
 struct qib_devdata* pci_get_drvdata (struct pci_dev*) ;
 int qib_dev_err (struct qib_devdata*,char*,int) ;
 int qib_device_remove (struct qib_devdata*) ;
 int qib_mini_init ;
 int qib_postinit_cleanup (struct qib_devdata*) ;
 int qib_shutdown_device (struct qib_devdata*) ;
 int qib_stop_timers (struct qib_devdata*) ;
 int qib_unregister_ib_device (struct qib_devdata*) ;
 int qibfs_remove (struct qib_devdata*) ;

__attribute__((used)) static void qib_remove_one(struct pci_dev *pdev)
{
 struct qib_devdata *dd = pci_get_drvdata(pdev);
 int ret;


 qib_unregister_ib_device(dd);





 if (!qib_mini_init)
  qib_shutdown_device(dd);

 qib_stop_timers(dd);


 flush_workqueue(ib_wq);

 ret = qibfs_remove(dd);
 if (ret)
  qib_dev_err(dd, "Failed counters filesystem cleanup: %d\n",
       -ret);

 qib_device_remove(dd);

 qib_postinit_cleanup(dd);
}
