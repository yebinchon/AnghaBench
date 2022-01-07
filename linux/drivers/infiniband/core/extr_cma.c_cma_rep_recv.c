
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ib; } ;
struct rdma_id_private {TYPE_1__ cm_id; } ;


 int IB_CM_REJ_CONSUMER_DEFINED ;
 int cma_modify_qp_err (struct rdma_id_private*) ;
 int cma_modify_qp_rtr (struct rdma_id_private*,int *) ;
 int cma_modify_qp_rts (struct rdma_id_private*,int *) ;
 int ib_send_cm_rej (int ,int ,int *,int ,int *,int ) ;
 int ib_send_cm_rtu (int ,int *,int ) ;
 int pr_debug_ratelimited (char*,int) ;

__attribute__((used)) static int cma_rep_recv(struct rdma_id_private *id_priv)
{
 int ret;

 ret = cma_modify_qp_rtr(id_priv, ((void*)0));
 if (ret)
  goto reject;

 ret = cma_modify_qp_rts(id_priv, ((void*)0));
 if (ret)
  goto reject;

 ret = ib_send_cm_rtu(id_priv->cm_id.ib, ((void*)0), 0);
 if (ret)
  goto reject;

 return 0;
reject:
 pr_debug_ratelimited("RDMA CM: CONNECT_ERROR: failed to handle reply. status %d\n", ret);
 cma_modify_qp_err(id_priv);
 ib_send_cm_rej(id_priv->cm_id.ib, IB_CM_REJ_CONSUMER_DEFINED,
         ((void*)0), 0, ((void*)0), 0);
 return ret;
}
