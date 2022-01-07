
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_xrcd {int usecnt; int tgt_qp_mutex; } ;
struct ib_qp {int xrcd_list; int usecnt; struct ib_xrcd* xrcd; struct ib_qp* real_qp; } ;


 int __ib_insert_xrcd_qp (struct ib_xrcd*,struct ib_qp*) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int ib_close_qp (struct ib_qp*) ;
 int ib_destroy_qp (struct ib_qp*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int __ib_destroy_shared_qp(struct ib_qp *qp)
{
 struct ib_xrcd *xrcd;
 struct ib_qp *real_qp;
 int ret;

 real_qp = qp->real_qp;
 xrcd = real_qp->xrcd;

 mutex_lock(&xrcd->tgt_qp_mutex);
 ib_close_qp(qp);
 if (atomic_read(&real_qp->usecnt) == 0)
  list_del(&real_qp->xrcd_list);
 else
  real_qp = ((void*)0);
 mutex_unlock(&xrcd->tgt_qp_mutex);

 if (real_qp) {
  ret = ib_destroy_qp(real_qp);
  if (!ret)
   atomic_dec(&xrcd->usecnt);
  else
   __ib_insert_xrcd_qp(xrcd, real_qp);
 }

 return 0;
}
