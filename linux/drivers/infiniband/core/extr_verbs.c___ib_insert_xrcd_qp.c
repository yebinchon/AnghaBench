
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_xrcd {int tgt_qp_mutex; int tgt_qp_list; } ;
struct ib_qp {int xrcd_list; } ;


 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __ib_insert_xrcd_qp(struct ib_xrcd *xrcd, struct ib_qp *qp)
{
 mutex_lock(&xrcd->tgt_qp_mutex);
 list_add(&qp->xrcd_list, &xrcd->tgt_qp_list);
 mutex_unlock(&xrcd->tgt_qp_mutex);
}
