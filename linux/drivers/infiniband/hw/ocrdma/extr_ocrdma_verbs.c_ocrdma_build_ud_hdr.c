
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocrdma_qp {scalar_t__ qp_type; int qkey; } ;
struct ocrdma_hdr_wqe {int cw; } ;
struct ocrdma_ewqe_ud_hdr {int hdr_type; int rsvd_ahid; int qkey; int rsvd_dest_qpn; } ;
struct ocrdma_ah {TYPE_1__* av; int hdr_type; int id; } ;
struct ib_send_wr {int dummy; } ;
struct TYPE_4__ {int remote_qkey; int remote_qpn; int ah; } ;
struct TYPE_3__ {int valid; } ;


 scalar_t__ IB_QPT_GSI ;
 int OCRDMA_AV_VLAN_VALID ;
 int OCRDMA_FLAG_AH_VLAN_PR ;
 int OCRDMA_WQE_FLAGS_SHIFT ;
 struct ocrdma_ah* get_ocrdma_ah (int ) ;
 TYPE_2__* ud_wr (struct ib_send_wr const*) ;

__attribute__((used)) static void ocrdma_build_ud_hdr(struct ocrdma_qp *qp,
    struct ocrdma_hdr_wqe *hdr,
    const struct ib_send_wr *wr)
{
 struct ocrdma_ewqe_ud_hdr *ud_hdr =
  (struct ocrdma_ewqe_ud_hdr *)(hdr + 1);
 struct ocrdma_ah *ah = get_ocrdma_ah(ud_wr(wr)->ah);

 ud_hdr->rsvd_dest_qpn = ud_wr(wr)->remote_qpn;
 if (qp->qp_type == IB_QPT_GSI)
  ud_hdr->qkey = qp->qkey;
 else
  ud_hdr->qkey = ud_wr(wr)->remote_qkey;
 ud_hdr->rsvd_ahid = ah->id;
 ud_hdr->hdr_type = ah->hdr_type;
 if (ah->av->valid & OCRDMA_AV_VLAN_VALID)
  hdr->cw |= (OCRDMA_FLAG_AH_VLAN_PR << OCRDMA_WQE_FLAGS_SHIFT);
}
