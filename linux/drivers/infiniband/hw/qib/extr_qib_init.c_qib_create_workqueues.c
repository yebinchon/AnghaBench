
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wq_name ;
struct qib_pportdata {int * qib_wq; } ;
struct qib_devdata {int num_pports; int unit; struct qib_pportdata* pport; } ;


 int ENOMEM ;
 int WQ_MEM_RECLAIM ;
 int * alloc_ordered_workqueue (char*,int ) ;
 int destroy_workqueue (int *) ;
 int pr_err (char*,int) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static int qib_create_workqueues(struct qib_devdata *dd)
{
 int pidx;
 struct qib_pportdata *ppd;

 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;
  if (!ppd->qib_wq) {
   char wq_name[8];

   snprintf(wq_name, sizeof(wq_name), "qib%d_%d",
    dd->unit, pidx);
   ppd->qib_wq = alloc_ordered_workqueue(wq_name,
             WQ_MEM_RECLAIM);
   if (!ppd->qib_wq)
    goto wq_error;
  }
 }
 return 0;
wq_error:
 pr_err("create_singlethread_workqueue failed for port %d\n",
  pidx + 1);
 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;
  if (ppd->qib_wq) {
   destroy_workqueue(ppd->qib_wq);
   ppd->qib_wq = ((void*)0);
  }
 }
 return -ENOMEM;
}
