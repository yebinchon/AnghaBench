
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int iw; } ;
struct TYPE_3__ {scalar_t__ qp; } ;
struct rdma_id_private {TYPE_2__ cm_id; int qp_num; TYPE_1__ id; } ;
struct rdma_conn_param {int qp_num; int private_data_len; int private_data; int responder_resources; int initiator_depth; } ;
struct iw_cm_conn_param {int qpn; int private_data_len; int private_data; int ird; int ord; } ;


 int EINVAL ;
 int cma_modify_qp_rtr (struct rdma_id_private*,struct rdma_conn_param*) ;
 int iw_cm_accept (int ,struct iw_cm_conn_param*) ;

__attribute__((used)) static int cma_accept_iw(struct rdma_id_private *id_priv,
    struct rdma_conn_param *conn_param)
{
 struct iw_cm_conn_param iw_param;
 int ret;

 if (!conn_param)
  return -EINVAL;

 ret = cma_modify_qp_rtr(id_priv, conn_param);
 if (ret)
  return ret;

 iw_param.ord = conn_param->initiator_depth;
 iw_param.ird = conn_param->responder_resources;
 iw_param.private_data = conn_param->private_data;
 iw_param.private_data_len = conn_param->private_data_len;
 if (id_priv->id.qp) {
  iw_param.qpn = id_priv->qp_num;
 } else
  iw_param.qpn = conn_param->qp_num;

 return iw_cm_accept(id_priv->cm_id.iw, &iw_param);
}
