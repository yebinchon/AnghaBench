
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_filedata {int pq; int subctxt; struct qib_ctxtdata* rcd; } ;
struct qib_devdata {int flags; int unit; TYPE_1__* pcidev; } ;
struct qib_ctxtdata {int ctxt; struct qib_devdata* dd; } ;
struct file {struct qib_filedata* private_data; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int QIB_HAS_SEND_DMA ;
 int qib_user_sdma_queue_create (int *,int ,int ,int ) ;

__attribute__((used)) static int do_qib_user_sdma_queue_create(struct file *fp)
{
 struct qib_filedata *fd = fp->private_data;
 struct qib_ctxtdata *rcd = fd->rcd;
 struct qib_devdata *dd = rcd->dd;

 if (dd->flags & QIB_HAS_SEND_DMA) {

  fd->pq = qib_user_sdma_queue_create(&dd->pcidev->dev,
          dd->unit,
          rcd->ctxt,
          fd->subctxt);
  if (!fd->pq)
   return -ENOMEM;
 }

 return 0;
}
