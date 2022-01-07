
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct ib_qp {int dummy; } ;
struct TYPE_5__ {size_t qp_num; } ;
struct i40iw_qp {int iwpd; int sc_qp; TYPE_1__ ibqp; int refcount; struct i40iw_device* iwdev; } ;
struct i40iw_device {int cqp; int qptable_lock; int ** qp_table; } ;
struct TYPE_6__ {uintptr_t scratch; int remove_hash_idx; int * qp; } ;
struct TYPE_7__ {TYPE_2__ qp_destroy; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct cqp_commands_info {int post_sq; TYPE_4__ in; int cqp_cmd; } ;
struct i40iw_cqp_request {struct cqp_commands_info info; void* param; int callback_fcn; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int OP_QP_DESTROY ;
 int atomic_dec_and_test (int *) ;
 int i40iw_free_qp ;
 int i40iw_free_qp_resources (struct i40iw_device*,struct i40iw_qp*,size_t) ;
 struct i40iw_cqp_request* i40iw_get_cqp_request (int *,int) ;
 int i40iw_handle_cqp_op (struct i40iw_device*,struct i40iw_cqp_request*) ;
 int i40iw_rem_devusecount (struct i40iw_device*) ;
 int i40iw_rem_pdusecount (int ,struct i40iw_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct i40iw_qp* to_iwqp (struct ib_qp*) ;

void i40iw_rem_ref(struct ib_qp *ibqp)
{
 struct i40iw_qp *iwqp;
 enum i40iw_status_code status;
 struct i40iw_cqp_request *cqp_request;
 struct cqp_commands_info *cqp_info;
 struct i40iw_device *iwdev;
 u32 qp_num;
 unsigned long flags;

 iwqp = to_iwqp(ibqp);
 iwdev = iwqp->iwdev;
 spin_lock_irqsave(&iwdev->qptable_lock, flags);
 if (!atomic_dec_and_test(&iwqp->refcount)) {
  spin_unlock_irqrestore(&iwdev->qptable_lock, flags);
  return;
 }

 qp_num = iwqp->ibqp.qp_num;
 iwdev->qp_table[qp_num] = ((void*)0);
 spin_unlock_irqrestore(&iwdev->qptable_lock, flags);
 cqp_request = i40iw_get_cqp_request(&iwdev->cqp, 0);
 if (!cqp_request)
  return;

 cqp_request->callback_fcn = i40iw_free_qp;
 cqp_request->param = (void *)&iwqp->sc_qp;
 cqp_info = &cqp_request->info;
 cqp_info->cqp_cmd = OP_QP_DESTROY;
 cqp_info->post_sq = 1;
 cqp_info->in.u.qp_destroy.qp = &iwqp->sc_qp;
 cqp_info->in.u.qp_destroy.scratch = (uintptr_t)cqp_request;
 cqp_info->in.u.qp_destroy.remove_hash_idx = 1;
 status = i40iw_handle_cqp_op(iwdev, cqp_request);
 if (!status)
  return;

 i40iw_rem_pdusecount(iwqp->iwpd, iwdev);
 i40iw_free_qp_resources(iwdev, iwqp, qp_num);
 i40iw_rem_devusecount(iwdev);
}
