
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ device; int qp; } ;
struct rdma_id_private {int qp_mutex; TYPE_2__ id; TYPE_1__* cma_dev; } ;
struct rdma_conn_param {int responder_resources; } ;
struct ib_qp_attr {int max_dest_rd_atomic; int qp_state; } ;
struct TYPE_3__ {scalar_t__ device; } ;


 int BUG_ON (int) ;
 int IB_QPS_INIT ;
 int IB_QPS_RTR ;
 int ib_modify_qp (int ,struct ib_qp_attr*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_init_qp_attr (TYPE_2__*,struct ib_qp_attr*,int*) ;

__attribute__((used)) static int cma_modify_qp_rtr(struct rdma_id_private *id_priv,
        struct rdma_conn_param *conn_param)
{
 struct ib_qp_attr qp_attr;
 int qp_attr_mask, ret;

 mutex_lock(&id_priv->qp_mutex);
 if (!id_priv->id.qp) {
  ret = 0;
  goto out;
 }


 qp_attr.qp_state = IB_QPS_INIT;
 ret = rdma_init_qp_attr(&id_priv->id, &qp_attr, &qp_attr_mask);
 if (ret)
  goto out;

 ret = ib_modify_qp(id_priv->id.qp, &qp_attr, qp_attr_mask);
 if (ret)
  goto out;

 qp_attr.qp_state = IB_QPS_RTR;
 ret = rdma_init_qp_attr(&id_priv->id, &qp_attr, &qp_attr_mask);
 if (ret)
  goto out;

 BUG_ON(id_priv->cma_dev->device != id_priv->id.device);

 if (conn_param)
  qp_attr.max_dest_rd_atomic = conn_param->responder_resources;
 ret = ib_modify_qp(id_priv->id.qp, &qp_attr, qp_attr_mask);
out:
 mutex_unlock(&id_priv->qp_mutex);
 return ret;
}
