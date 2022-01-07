
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_ib_qp_grp {int kobj; TYPE_1__* vf; } ;
struct usnic_ib_dev {int * qpn_kobj; } ;
struct TYPE_2__ {struct usnic_ib_dev* pf; } ;


 int kobject_put (int *) ;

void usnic_ib_sysfs_qpn_remove(struct usnic_ib_qp_grp *qp_grp)
{
 struct usnic_ib_dev *us_ibdev;

 us_ibdev = qp_grp->vf->pf;

 kobject_put(&qp_grp->kobj);
 kobject_put(us_ibdev->qpn_kobj);
}
