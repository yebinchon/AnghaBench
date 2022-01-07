
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int (* f_cleanup ) (struct qib_devdata*) ;} ;


 int cleanup_device_data (struct qib_devdata*) ;
 int qib_free_devdata (struct qib_devdata*) ;
 int qib_pcie_ddcleanup (struct qib_devdata*) ;
 int stub1 (struct qib_devdata*) ;

__attribute__((used)) static void qib_postinit_cleanup(struct qib_devdata *dd)
{







 if (dd->f_cleanup)
  dd->f_cleanup(dd);

 qib_pcie_ddcleanup(dd);

 cleanup_device_data(dd);

 qib_free_devdata(dd);
}
