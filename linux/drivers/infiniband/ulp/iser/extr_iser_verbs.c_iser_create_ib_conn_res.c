
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct iser_device {int comps_used; int pd; struct ib_device* ib_device; TYPE_3__* comps; } ;
struct iser_conn {void* max_cmds; } ;
struct TYPE_6__ {int max_send_sge; int max_recv_sge; scalar_t__ max_send_wr; int max_recv_wr; } ;
struct ib_qp_init_attr {TYPE_1__ cap; int create_flags; int qp_type; int sq_sig_type; int recv_cq; int send_cq; void* qp_context; int event_handler; } ;
struct TYPE_7__ {scalar_t__ max_qp_wr; } ;
struct ib_device {TYPE_2__ attrs; int dev; } ;
struct ib_conn {TYPE_3__* comp; TYPE_4__* cma_id; int qp; scalar_t__ pi_support; struct iser_device* device; } ;
struct TYPE_10__ {int connlist_mutex; } ;
struct TYPE_9__ {int qp; } ;
struct TYPE_8__ {scalar_t__ active_qps; int cq; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int IB_QPT_RC ;
 int IB_QP_CREATE_INTEGRITY_EN ;
 int IB_SIGNAL_REQ_WR ;
 void* ISER_GET_MAX_XMIT_CMDS (scalar_t__) ;
 int ISER_QP_MAX_RECV_DTOS ;
 scalar_t__ ISER_QP_MAX_REQ_DTOS ;
 scalar_t__ ISER_QP_SIG_MAX_REQ_DTOS ;
 int dev_name (int *) ;
 TYPE_5__ ig ;
 int iser_dbg (char*,int ,scalar_t__) ;
 int iser_err (char*,int) ;
 int iser_info (char*,...) ;
 int iser_qp_event_callback ;
 int memset (struct ib_qp_init_attr*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_create_qp (TYPE_4__*,int ,struct ib_qp_init_attr*) ;
 struct iser_conn* to_iser_conn (struct ib_conn*) ;

__attribute__((used)) static int iser_create_ib_conn_res(struct ib_conn *ib_conn)
{
 struct iser_conn *iser_conn = to_iser_conn(ib_conn);
 struct iser_device *device;
 struct ib_device *ib_dev;
 struct ib_qp_init_attr init_attr;
 int ret = -ENOMEM;
 int index, min_index = 0;

 BUG_ON(ib_conn->device == ((void*)0));

 device = ib_conn->device;
 ib_dev = device->ib_device;

 memset(&init_attr, 0, sizeof init_attr);

 mutex_lock(&ig.connlist_mutex);

 for (index = 0; index < device->comps_used; index++) {
  if (device->comps[index].active_qps <
      device->comps[min_index].active_qps)
   min_index = index;
 }
 ib_conn->comp = &device->comps[min_index];
 ib_conn->comp->active_qps++;
 mutex_unlock(&ig.connlist_mutex);
 iser_info("cq index %d used for ib_conn %p\n", min_index, ib_conn);

 init_attr.event_handler = iser_qp_event_callback;
 init_attr.qp_context = (void *)ib_conn;
 init_attr.send_cq = ib_conn->comp->cq;
 init_attr.recv_cq = ib_conn->comp->cq;
 init_attr.cap.max_recv_wr = ISER_QP_MAX_RECV_DTOS;
 init_attr.cap.max_send_sge = 2;
 init_attr.cap.max_recv_sge = 1;
 init_attr.sq_sig_type = IB_SIGNAL_REQ_WR;
 init_attr.qp_type = IB_QPT_RC;
 if (ib_conn->pi_support) {
  init_attr.cap.max_send_wr = ISER_QP_SIG_MAX_REQ_DTOS + 1;
  init_attr.create_flags |= IB_QP_CREATE_INTEGRITY_EN;
  iser_conn->max_cmds =
   ISER_GET_MAX_XMIT_CMDS(ISER_QP_SIG_MAX_REQ_DTOS);
 } else {
  if (ib_dev->attrs.max_qp_wr > ISER_QP_MAX_REQ_DTOS) {
   init_attr.cap.max_send_wr = ISER_QP_MAX_REQ_DTOS + 1;
   iser_conn->max_cmds =
    ISER_GET_MAX_XMIT_CMDS(ISER_QP_MAX_REQ_DTOS);
  } else {
   init_attr.cap.max_send_wr = ib_dev->attrs.max_qp_wr;
   iser_conn->max_cmds =
    ISER_GET_MAX_XMIT_CMDS(ib_dev->attrs.max_qp_wr);
   iser_dbg("device %s supports max_send_wr %d\n",
     dev_name(&device->ib_device->dev),
     ib_dev->attrs.max_qp_wr);
  }
 }

 ret = rdma_create_qp(ib_conn->cma_id, device->pd, &init_attr);
 if (ret)
  goto out_err;

 ib_conn->qp = ib_conn->cma_id->qp;
 iser_info("setting conn %p cma_id %p qp %p\n",
    ib_conn, ib_conn->cma_id,
    ib_conn->cma_id->qp);
 return ret;

out_err:
 mutex_lock(&ig.connlist_mutex);
 ib_conn->comp->active_qps--;
 mutex_unlock(&ig.connlist_mutex);
 iser_err("unable to alloc mem or create resource, err %d\n", ret);

 return ret;
}
