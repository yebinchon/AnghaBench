
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_pportdata {int dummy; } ;
struct qib_devdata {int assigned_node_id; unsigned int first_user_ctxt; int skip_kctxt_mask; unsigned int num_pports; int * rcd; struct qib_pportdata* pport; int ctxtcnt; TYPE_1__* pcidev; } ;
struct qib_ctxtdata {int seq_cnt; int * pkeys; } ;
struct TYPE_2__ {int bus; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QIB_DEFAULT_P_KEY ;
 int * kcalloc (int ,int,int ) ;
 int kfree (int *) ;
 int numa_node_id () ;
 int pcibus_to_node (int ) ;
 struct qib_ctxtdata* qib_create_ctxtdata (struct qib_pportdata*,unsigned int,int) ;
 int qib_dev_err (struct qib_devdata*,char*) ;

int qib_create_ctxts(struct qib_devdata *dd)
{
 unsigned i;
 int local_node_id = pcibus_to_node(dd->pcidev->bus);

 if (local_node_id < 0)
  local_node_id = numa_node_id();
 dd->assigned_node_id = local_node_id;





 dd->rcd = kcalloc(dd->ctxtcnt, sizeof(*dd->rcd), GFP_KERNEL);
 if (!dd->rcd)
  return -ENOMEM;


 for (i = 0; i < dd->first_user_ctxt; ++i) {
  struct qib_pportdata *ppd;
  struct qib_ctxtdata *rcd;

  if (dd->skip_kctxt_mask & (1 << i))
   continue;

  ppd = dd->pport + (i % dd->num_pports);

  rcd = qib_create_ctxtdata(ppd, i, dd->assigned_node_id);
  if (!rcd) {
   qib_dev_err(dd,
    "Unable to allocate ctxtdata for Kernel ctxt, failing\n");
   kfree(dd->rcd);
   dd->rcd = ((void*)0);
   return -ENOMEM;
  }
  rcd->pkeys[0] = QIB_DEFAULT_P_KEY;
  rcd->seq_cnt = 1;
 }
 return 0;
}
