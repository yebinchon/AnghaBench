
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_15__ {int qp_num; } ;
struct rvt_qp {scalar_t__ s_mig_state; scalar_t__ port_num; int remote_ah_attr; TYPE_7__ ibqp; int s_pkey_index; int s_lock; int alt_ah_attr; int s_alt_pkey_index; } ;
struct TYPE_9__ {int gid_prefix; } ;
struct qib_ibport {TYPE_1__ rvp; } ;
struct TYPE_10__ {int sgid; int dgid; } ;
struct TYPE_11__ {TYPE_2__ grh; } ;
struct TYPE_12__ {TYPE_3__ l; } ;
struct ib_header {int * lrh; TYPE_4__ u; } ;
struct TYPE_13__ {int interface_id; int subnet_prefix; } ;
struct TYPE_14__ {TYPE_5__ global; } ;
struct ib_global_route {TYPE_6__ dgid; int sgid_index; } ;
typedef int __be64 ;
struct TYPE_16__ {scalar_t__ port; } ;


 int IB_AH_GRH ;
 int IB_BTH_MIG_REQ ;
 scalar_t__ IB_MIG_ARMED ;
 scalar_t__ IB_MIG_REARM ;
 int be16_to_cpu (int ) ;
 int get_sguid (struct qib_ibport*,int ) ;
 int gid_ok (int *,int ,int ) ;
 TYPE_8__* ppd_from_ibp (struct qib_ibport*) ;
 int qib_bad_pkey (struct qib_ibport*,int ,int,int ,int ,int ,int ) ;
 int qib_get_pkey (struct qib_ibport*,int ) ;
 int qib_migrate_qp (struct rvt_qp*) ;
 int qib_pkey_ok (int ,int ) ;
 int rdma_ah_get_ah_flags (int *) ;
 int rdma_ah_get_dlid (int *) ;
 scalar_t__ rdma_ah_get_port_num (int *) ;
 struct ib_global_route* rdma_ah_read_grh (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int qib_ruc_check_hdr(struct qib_ibport *ibp, struct ib_header *hdr,
        int has_grh, struct rvt_qp *qp, u32 bth0)
{
 __be64 guid;
 unsigned long flags;

 if (qp->s_mig_state == IB_MIG_ARMED && (bth0 & IB_BTH_MIG_REQ)) {
  if (!has_grh) {
   if (rdma_ah_get_ah_flags(&qp->alt_ah_attr) &
       IB_AH_GRH)
    goto err;
  } else {
   const struct ib_global_route *grh;

   if (!(rdma_ah_get_ah_flags(&qp->alt_ah_attr) &
         IB_AH_GRH))
    goto err;
   grh = rdma_ah_read_grh(&qp->alt_ah_attr);
   guid = get_sguid(ibp, grh->sgid_index);
   if (!gid_ok(&hdr->u.l.grh.dgid,
        ibp->rvp.gid_prefix, guid))
    goto err;
   if (!gid_ok(&hdr->u.l.grh.sgid,
       grh->dgid.global.subnet_prefix,
       grh->dgid.global.interface_id))
    goto err;
  }
  if (!qib_pkey_ok((u16)bth0,
     qib_get_pkey(ibp, qp->s_alt_pkey_index))) {
   qib_bad_pkey(ibp,
         (u16)bth0,
         (be16_to_cpu(hdr->lrh[0]) >> 4) & 0xF,
         0, qp->ibqp.qp_num,
         hdr->lrh[3], hdr->lrh[1]);
   goto err;
  }

  if ((be16_to_cpu(hdr->lrh[3]) !=
       rdma_ah_get_dlid(&qp->alt_ah_attr)) ||
      ppd_from_ibp(ibp)->port !=
       rdma_ah_get_port_num(&qp->alt_ah_attr))
   goto err;
  spin_lock_irqsave(&qp->s_lock, flags);
  qib_migrate_qp(qp);
  spin_unlock_irqrestore(&qp->s_lock, flags);
 } else {
  if (!has_grh) {
   if (rdma_ah_get_ah_flags(&qp->remote_ah_attr) &
       IB_AH_GRH)
    goto err;
  } else {
   const struct ib_global_route *grh;

   if (!(rdma_ah_get_ah_flags(&qp->remote_ah_attr) &
         IB_AH_GRH))
    goto err;
   grh = rdma_ah_read_grh(&qp->remote_ah_attr);
   guid = get_sguid(ibp, grh->sgid_index);
   if (!gid_ok(&hdr->u.l.grh.dgid,
        ibp->rvp.gid_prefix, guid))
    goto err;
   if (!gid_ok(&hdr->u.l.grh.sgid,
       grh->dgid.global.subnet_prefix,
       grh->dgid.global.interface_id))
    goto err;
  }
  if (!qib_pkey_ok((u16)bth0,
     qib_get_pkey(ibp, qp->s_pkey_index))) {
   qib_bad_pkey(ibp,
         (u16)bth0,
         (be16_to_cpu(hdr->lrh[0]) >> 4) & 0xF,
         0, qp->ibqp.qp_num,
         hdr->lrh[3], hdr->lrh[1]);
   goto err;
  }

  if (be16_to_cpu(hdr->lrh[3]) !=
      rdma_ah_get_dlid(&qp->remote_ah_attr) ||
      ppd_from_ibp(ibp)->port != qp->port_num)
   goto err;
  if (qp->s_mig_state == IB_MIG_REARM &&
      !(bth0 & IB_BTH_MIG_REQ))
   qp->s_mig_state = IB_MIG_ARMED;
 }

 return 0;

err:
 return 1;
}
