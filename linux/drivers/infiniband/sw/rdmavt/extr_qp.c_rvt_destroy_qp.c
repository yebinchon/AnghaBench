
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int kwq; } ;
struct TYPE_7__ {scalar_t__ qp_type; int qp_num; } ;
struct rvt_qp {int s_wq; int alt_ah_attr; int remote_ah_attr; struct rvt_qp* s_ack_queue; TYPE_4__ r_rq; TYPE_3__* ip; TYPE_2__ ibqp; int refcount; int wait; int r_lock; int s_hlock; int s_lock; } ;
struct TYPE_10__ {int (* qp_priv_free ) (struct rvt_dev_info*,struct rvt_qp*) ;} ;
struct rvt_dev_info {int n_rc_qps; int busy_jiffies; TYPE_5__ driver_f; int n_qps_lock; int n_qps_allocated; TYPE_1__* qp_dev; } ;
struct ib_udata {int dummy; } ;
struct ib_qp {int qp_type; int device; } ;
struct TYPE_8__ {int ref; } ;
struct TYPE_6__ {int qpn_table; } ;


 scalar_t__ IB_QPT_RC ;
 int RC_QP_SCALING_INTERVAL ;
 int atomic_read (int *) ;
 int free_ud_wq_attr (struct rvt_qp*) ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 struct rvt_qp* ibqp_to_rvtqp (struct ib_qp*) ;
 int kfree (struct rvt_qp*) ;
 int kref_put (int *,int ) ;
 int kvfree (int ) ;
 int rdma_destroy_ah_attr (int *) ;
 int rvt_free_qpn (int *,int ) ;
 int rvt_release_mmap_info ;
 int rvt_reset_qp (struct rvt_dev_info*,struct rvt_qp*,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct rvt_dev_info*,struct rvt_qp*) ;
 int vfree (int ) ;
 int wait_event (int ,int) ;

int rvt_destroy_qp(struct ib_qp *ibqp, struct ib_udata *udata)
{
 struct rvt_qp *qp = ibqp_to_rvtqp(ibqp);
 struct rvt_dev_info *rdi = ib_to_rvt(ibqp->device);

 spin_lock_irq(&qp->r_lock);
 spin_lock(&qp->s_hlock);
 spin_lock(&qp->s_lock);
 rvt_reset_qp(rdi, qp, ibqp->qp_type);
 spin_unlock(&qp->s_lock);
 spin_unlock(&qp->s_hlock);
 spin_unlock_irq(&qp->r_lock);

 wait_event(qp->wait, !atomic_read(&qp->refcount));

 rvt_free_qpn(&rdi->qp_dev->qpn_table, qp->ibqp.qp_num);

 spin_lock(&rdi->n_qps_lock);
 rdi->n_qps_allocated--;
 if (qp->ibqp.qp_type == IB_QPT_RC) {
  rdi->n_rc_qps--;
  rdi->busy_jiffies = rdi->n_rc_qps / RC_QP_SCALING_INTERVAL;
 }
 spin_unlock(&rdi->n_qps_lock);

 if (qp->ip)
  kref_put(&qp->ip->ref, rvt_release_mmap_info);
 kvfree(qp->r_rq.kwq);
 rdi->driver_f.qp_priv_free(rdi, qp);
 kfree(qp->s_ack_queue);
 rdma_destroy_ah_attr(&qp->remote_ah_attr);
 rdma_destroy_ah_attr(&qp->alt_ah_attr);
 free_ud_wq_attr(qp);
 vfree(qp->s_wq);
 kfree(qp);
 return 0;
}
