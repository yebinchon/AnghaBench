
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qib_pportdata {int dummy; } ;
struct TYPE_2__ {int rdi; } ;
struct qib_devdata {TYPE_1__ verbs_dev; int list; int int_counter; int unit; } ;
struct pci_dev {int dev; } ;


 int BITS_TO_LONGS (scalar_t__) ;
 int ENOMEM ;
 struct qib_devdata* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int alloc_percpu (int ) ;
 scalar_t__ kcalloc (int ,int,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 scalar_t__ num_online_cpus () ;
 scalar_t__ qib_cpulist ;
 scalar_t__ qib_cpulist_count ;
 int qib_dbg_ibdev_init (TYPE_1__*) ;
 int qib_dev_table ;
 int qib_early_err (int *,char*,...) ;
 scalar_t__ rvt_alloc_device (int,int) ;
 int rvt_dealloc_device (int *) ;
 int rvt_set_ibdev_name (int *,char*,char*,int ) ;
 int u64 ;
 int xa_alloc_irq (int *,int *,struct qib_devdata*,int ,int ) ;
 int xa_limit_32b ;

struct qib_devdata *qib_alloc_devdata(struct pci_dev *pdev, size_t extra)
{
 struct qib_devdata *dd;
 int ret, nports;


 nports = extra / sizeof(struct qib_pportdata);
 dd = (struct qib_devdata *)rvt_alloc_device(sizeof(*dd) + extra,
          nports);
 if (!dd)
  return ERR_PTR(-ENOMEM);

 ret = xa_alloc_irq(&qib_dev_table, &dd->unit, dd, xa_limit_32b,
   GFP_KERNEL);
 if (ret < 0) {
  qib_early_err(&pdev->dev,
         "Could not allocate unit ID: error %d\n", -ret);
  goto bail;
 }
 rvt_set_ibdev_name(&dd->verbs_dev.rdi, "%s%d", "qib", dd->unit);

 dd->int_counter = alloc_percpu(u64);
 if (!dd->int_counter) {
  ret = -ENOMEM;
  qib_early_err(&pdev->dev,
         "Could not allocate per-cpu int_counter\n");
  goto bail;
 }

 if (!qib_cpulist_count) {
  u32 count = num_online_cpus();

  qib_cpulist = kcalloc(BITS_TO_LONGS(count), sizeof(long),
          GFP_KERNEL);
  if (qib_cpulist)
   qib_cpulist_count = count;
 }



 return dd;
bail:
 if (!list_empty(&dd->list))
  list_del_init(&dd->list);
 rvt_dealloc_device(&dd->verbs_dev.rdi);
 return ERR_PTR(ret);
}
