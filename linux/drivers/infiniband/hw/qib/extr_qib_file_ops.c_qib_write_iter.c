
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_user_sdma_queue {int dummy; } ;
struct qib_filedata {struct qib_user_sdma_queue* pq; } ;
struct qib_ctxtdata {int dummy; } ;
struct kiocb {TYPE_1__* ki_filp; } ;
struct iov_iter {int nr_segs; int iov; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct qib_filedata* private_data; } ;


 int EINVAL ;
 struct qib_ctxtdata* ctxt_fp (TYPE_1__*) ;
 int iter_is_iovec (struct iov_iter*) ;
 int qib_user_sdma_writev (struct qib_ctxtdata*,struct qib_user_sdma_queue*,int ,int ) ;

__attribute__((used)) static ssize_t qib_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 struct qib_filedata *fp = iocb->ki_filp->private_data;
 struct qib_ctxtdata *rcd = ctxt_fp(iocb->ki_filp);
 struct qib_user_sdma_queue *pq = fp->pq;

 if (!iter_is_iovec(from) || !from->nr_segs || !pq)
  return -EINVAL;

 return qib_user_sdma_writev(rcd, pq, from->iov, from->nr_segs);
}
