
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_sqp {int send_psn; int qkey; int pkey_index; } ;
struct ib_qp_attr {int sq_psn; int qkey; int pkey_index; } ;


 int IB_QP_PKEY_INDEX ;
 int IB_QP_QKEY ;
 int IB_QP_SQ_PSN ;

__attribute__((used)) static void store_attrs(struct mthca_sqp *sqp, const struct ib_qp_attr *attr,
   int attr_mask)
{
 if (attr_mask & IB_QP_PKEY_INDEX)
  sqp->pkey_index = attr->pkey_index;
 if (attr_mask & IB_QP_QKEY)
  sqp->qkey = attr->qkey;
 if (attr_mask & IB_QP_SQ_PSN)
  sqp->send_psn = attr->sq_psn;
}
