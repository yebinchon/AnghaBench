
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siw_qp {TYPE_1__* ib_qp; int qp_num; struct siw_device* sdev; int ref; } ;
struct siw_device {int qp_xa; } ;
struct TYPE_2__ {int qp_num; } ;


 int GFP_KERNEL ;
 int kref_init (int *) ;
 int siw_dbg_qp (struct siw_qp*,char*) ;
 int xa_alloc (int *,int *,struct siw_qp*,int ,int ) ;
 int xa_limit_32b ;

int siw_qp_add(struct siw_device *sdev, struct siw_qp *qp)
{
 int rv = xa_alloc(&sdev->qp_xa, &qp->ib_qp->qp_num, qp, xa_limit_32b,
     GFP_KERNEL);

 if (!rv) {
  kref_init(&qp->ref);
  qp->sdev = sdev;
  qp->qp_num = qp->ib_qp->qp_num;
  siw_dbg_qp(qp, "new QP\n");
 }
 return rv;
}
