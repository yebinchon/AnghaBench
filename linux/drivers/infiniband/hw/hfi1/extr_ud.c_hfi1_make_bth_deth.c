
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {int imm_data; } ;
struct TYPE_7__ {scalar_t__ opcode; int send_flags; TYPE_1__ ex; } ;
struct rvt_swqe {int psn; TYPE_2__ wr; } ;
struct TYPE_10__ {scalar_t__ qp_type; int qp_num; int device; } ;
struct rvt_qp {int qkey; TYPE_5__ ibqp; int s_pkey_index; int port_num; } ;
struct TYPE_8__ {void** deth; int imm_data; } ;
struct TYPE_9__ {TYPE_3__ ud; } ;
struct ib_other_headers {TYPE_4__ u; void** bth; } ;
struct hfi1_ibport {int dummy; } ;


 int IB_BTH_SOLICITED ;
 int IB_OPCODE_UD_SEND_ONLY ;
 int IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE ;
 scalar_t__ IB_QPT_GSI ;
 scalar_t__ IB_QPT_SMI ;
 int IB_SEND_SOLICITED ;
 scalar_t__ IB_WR_SEND_WITH_IMM ;
 void* cpu_to_be32 (int) ;
 int hfi1_get_pkey (struct hfi1_ibport*,int ) ;
 int mask_psn (int ) ;
 int rvt_get_swqe_pkey_index (struct rvt_swqe*) ;
 int rvt_get_swqe_remote_qkey (struct rvt_swqe*) ;
 int rvt_get_swqe_remote_qpn (struct rvt_swqe*) ;
 struct hfi1_ibport* to_iport (int ,int ) ;

__attribute__((used)) static void hfi1_make_bth_deth(struct rvt_qp *qp, struct rvt_swqe *wqe,
          struct ib_other_headers *ohdr,
          u16 *pkey, u32 extra_bytes, bool bypass)
{
 u32 bth0;
 struct hfi1_ibport *ibp;

 ibp = to_iport(qp->ibqp.device, qp->port_num);
 if (wqe->wr.opcode == IB_WR_SEND_WITH_IMM) {
  ohdr->u.ud.imm_data = wqe->wr.ex.imm_data;
  bth0 = IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE << 24;
 } else {
  bth0 = IB_OPCODE_UD_SEND_ONLY << 24;
 }

 if (wqe->wr.send_flags & IB_SEND_SOLICITED)
  bth0 |= IB_BTH_SOLICITED;
 bth0 |= extra_bytes << 20;
 if (qp->ibqp.qp_type == IB_QPT_GSI || qp->ibqp.qp_type == IB_QPT_SMI)
  *pkey = hfi1_get_pkey(ibp, rvt_get_swqe_pkey_index(wqe));
 else
  *pkey = hfi1_get_pkey(ibp, qp->s_pkey_index);
 if (!bypass)
  bth0 |= *pkey;
 ohdr->bth[0] = cpu_to_be32(bth0);
 ohdr->bth[1] = cpu_to_be32(rvt_get_swqe_remote_qpn(wqe));
 ohdr->bth[2] = cpu_to_be32(mask_psn(wqe->psn));




 ohdr->u.ud.deth[0] =
  cpu_to_be32((int)rvt_get_swqe_remote_qkey(wqe) < 0 ? qp->qkey :
       rvt_get_swqe_remote_qkey(wqe));
 ohdr->u.ud.deth[1] = cpu_to_be32(qp->ibqp.qp_num);
}
