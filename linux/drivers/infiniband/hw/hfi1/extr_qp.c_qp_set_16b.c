
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct rvt_qp {int remote_ah_attr; int port_num; TYPE_1__ ibqp; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {int hdr_type; } ;
struct hfi1_pportdata {int lid; } ;
struct hfi1_ibport {int dummy; } ;


 int IB_AH_GRH ;
 int hfi1_get_hdr_type (int ,int *) ;
 int hfi1_make_opa_lid (int *) ;
 int hfi1_update_ah_attr (int ,int *) ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 int rdma_ah_get_ah_flags (int *) ;
 struct hfi1_ibport* to_iport (int ,int ) ;

__attribute__((used)) static inline void qp_set_16b(struct rvt_qp *qp)
{
 struct hfi1_pportdata *ppd;
 struct hfi1_ibport *ibp;
 struct hfi1_qp_priv *priv = qp->priv;


 hfi1_update_ah_attr(qp->ibqp.device, &qp->remote_ah_attr);


 hfi1_make_opa_lid(&qp->remote_ah_attr);

 if (!(rdma_ah_get_ah_flags(&qp->remote_ah_attr) & IB_AH_GRH))
  return;

 ibp = to_iport(qp->ibqp.device, qp->port_num);
 ppd = ppd_from_ibp(ibp);
 priv->hdr_type = hfi1_get_hdr_type(ppd->lid, &qp->remote_ah_attr);
}
