
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_ib_qp_grp {int grp_id; int kobj; TYPE_1__* vf; } ;
struct usnic_ib_dev {int qpn_kobj; } ;
struct TYPE_2__ {struct usnic_ib_dev* pf; } ;


 int kobject_get (int ) ;
 int kobject_init_and_add (int *,int *,int ,char*,int ) ;
 int kobject_put (int ) ;
 int usnic_ib_qpn_type ;

void usnic_ib_sysfs_qpn_add(struct usnic_ib_qp_grp *qp_grp)
{
 struct usnic_ib_dev *us_ibdev;
 int err;

 us_ibdev = qp_grp->vf->pf;

 err = kobject_init_and_add(&qp_grp->kobj, &usnic_ib_qpn_type,
   kobject_get(us_ibdev->qpn_kobj),
   "%d", qp_grp->grp_id);
 if (err) {
  kobject_put(us_ibdev->qpn_kobj);
  return;
 }
}
