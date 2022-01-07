
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int dummy; } ;
struct rvt_mcast_qp {struct rvt_qp* qp; } ;


 int GFP_KERNEL ;
 struct rvt_mcast_qp* kmalloc (int,int ) ;
 int rvt_get_qp (struct rvt_qp*) ;

__attribute__((used)) static struct rvt_mcast_qp *rvt_mcast_qp_alloc(struct rvt_qp *qp)
{
 struct rvt_mcast_qp *mqp;

 mqp = kmalloc(sizeof(*mqp), GFP_KERNEL);
 if (!mqp)
  goto bail;

 mqp->qp = qp;
 rvt_get_qp(qp);

bail:
 return mqp;
}
