
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usnic_ib_vf {TYPE_2__* pf; } ;
struct TYPE_3__ {int qp_type; } ;
struct usnic_ib_qp_grp {TYPE_1__ ibqp; int state; struct usnic_ib_vf* vf; } ;
struct ib_qp_init_attr {int qkey; int cur_qp_state; int qp_state; } ;
struct ib_qp_attr {int qkey; int cur_qp_state; int qp_state; } ;
struct ib_qp {int dummy; } ;
struct TYPE_4__ {int usdev_lock; } ;


 int EINVAL ;

 int memset (struct ib_qp_init_attr*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usnic_ib_qp_grp* to_uqp_grp (struct ib_qp*) ;
 int usnic_dbg (char*) ;
 int usnic_err (char*,int) ;

int usnic_ib_query_qp(struct ib_qp *qp, struct ib_qp_attr *qp_attr,
    int qp_attr_mask,
    struct ib_qp_init_attr *qp_init_attr)
{
 struct usnic_ib_qp_grp *qp_grp;
 struct usnic_ib_vf *vf;
 int err;

 usnic_dbg("\n");

 memset(qp_attr, 0, sizeof(*qp_attr));
 memset(qp_init_attr, 0, sizeof(*qp_init_attr));

 qp_grp = to_uqp_grp(qp);
 vf = qp_grp->vf;
 mutex_lock(&vf->pf->usdev_lock);
 usnic_dbg("\n");
 qp_attr->qp_state = qp_grp->state;
 qp_attr->cur_qp_state = qp_grp->state;

 switch (qp_grp->ibqp.qp_type) {
 case 128:
  qp_attr->qkey = 0;
  break;
 default:
  usnic_err("Unexpected qp_type %d\n", qp_grp->ibqp.qp_type);
  err = -EINVAL;
  goto err_out;
 }

 mutex_unlock(&vf->pf->usdev_lock);
 return 0;

err_out:
 mutex_unlock(&vf->pf->usdev_lock);
 return err;
}
