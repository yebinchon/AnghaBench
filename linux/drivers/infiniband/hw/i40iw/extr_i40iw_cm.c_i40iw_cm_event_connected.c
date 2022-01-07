
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iw_cm_id {int (* rem_ref ) (struct iw_cm_id*) ;int * provider_data; } ;
struct ib_qp_attr {int qp_state; } ;
struct i40iw_sc_dev {TYPE_2__* iw_priv_qp_ops; } ;
struct TYPE_8__ {int device; } ;
struct TYPE_5__ {int sq_base; } ;
struct TYPE_7__ {TYPE_1__ qp_uk; } ;
struct i40iw_qp {int * cm_id; TYPE_4__ ibqp; scalar_t__ page; TYPE_3__ sc_qp; scalar_t__ destroyed; } ;
struct i40iw_cm_core {int ht_lock; int accelerated_list; } ;
struct i40iw_device {struct i40iw_cm_core cm_core; struct i40iw_sc_dev sc_dev; } ;
struct i40iw_cm_node {scalar_t__ send_rdma0_op; int qhash_set; int accelerated; int list; struct iw_cm_id* cm_id; } ;
struct i40iw_cm_event {struct i40iw_cm_node* cm_node; } ;
typedef int attr ;
struct TYPE_6__ {int (* qp_send_rtt ) (TYPE_3__*,int) ;} ;


 int ETIMEDOUT ;
 int I40IW_DEBUG_CM ;
 int IB_QPS_RTS ;
 int IB_QP_STATE ;
 int IW_CM_EVENT_CONNECT_REPLY ;
 scalar_t__ SEND_RDMA_READ_ZERO ;
 int i40iw_cm_init_tsa_conn (struct i40iw_qp*,struct i40iw_cm_node*) ;
 int i40iw_debug (struct i40iw_sc_dev*,int ,char*) ;
 int i40iw_modify_qp (TYPE_4__*,struct ib_qp_attr*,int ,int *) ;
 int i40iw_rem_ref_cm_node (struct i40iw_cm_node*) ;
 int i40iw_send_cm_event (struct i40iw_cm_node*,struct iw_cm_id*,int ,int) ;
 int kmap (scalar_t__) ;
 int kunmap (scalar_t__) ;
 int list_move_tail (int *,int *) ;
 int memset (struct ib_qp_attr*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*,int) ;
 int stub2 (struct iw_cm_id*) ;
 struct i40iw_device* to_iwdev (int ) ;

__attribute__((used)) static void i40iw_cm_event_connected(struct i40iw_cm_event *event)
{
 struct i40iw_qp *iwqp;
 struct i40iw_device *iwdev;
 struct i40iw_cm_core *cm_core;
 struct i40iw_cm_node *cm_node;
 struct i40iw_sc_dev *dev;
 struct ib_qp_attr attr;
 struct iw_cm_id *cm_id;
 unsigned long flags;
 int status;
 bool read0;

 cm_node = event->cm_node;
 cm_id = cm_node->cm_id;
 iwqp = (struct i40iw_qp *)cm_id->provider_data;
 iwdev = to_iwdev(iwqp->ibqp.device);
 dev = &iwdev->sc_dev;
 cm_core = &iwdev->cm_core;

 if (iwqp->destroyed) {
  status = -ETIMEDOUT;
  goto error;
 }
 i40iw_cm_init_tsa_conn(iwqp, cm_node);
 read0 = (cm_node->send_rdma0_op == SEND_RDMA_READ_ZERO);
 if (iwqp->page)
  iwqp->sc_qp.qp_uk.sq_base = kmap(iwqp->page);
 dev->iw_priv_qp_ops->qp_send_rtt(&iwqp->sc_qp, read0);
 if (iwqp->page)
  kunmap(iwqp->page);

 memset(&attr, 0, sizeof(attr));
 attr.qp_state = IB_QPS_RTS;
 cm_node->qhash_set = 0;
 i40iw_modify_qp(&iwqp->ibqp, &attr, IB_QP_STATE, ((void*)0));

 cm_node->accelerated = 1;
 spin_lock_irqsave(&cm_core->ht_lock, flags);
 list_move_tail(&cm_node->list, &cm_core->accelerated_list);
 spin_unlock_irqrestore(&cm_core->ht_lock, flags);
 status = i40iw_send_cm_event(cm_node, cm_id, IW_CM_EVENT_CONNECT_REPLY,
         0);
 if (status)
  i40iw_debug(dev, I40IW_DEBUG_CM, "error sending cm event - CONNECT_REPLY\n");

 return;

error:
 iwqp->cm_id = ((void*)0);
 cm_id->provider_data = ((void*)0);
 i40iw_send_cm_event(event->cm_node,
       cm_id,
       IW_CM_EVENT_CONNECT_REPLY,
       status);
 cm_id->rem_ref(cm_id);
 i40iw_rem_ref_cm_node(event->cm_node);
}
