
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int qp_type; int qp_num; } ;
struct rvt_qp {TYPE_2__ ibqp; int remote_qpn; int remote_ah_attr; } ;
struct ib_header {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_packet {int rhf; struct rvt_qp* qp; struct ib_header* hdr; int rcd; } ;
struct TYPE_3__ {int n_pkt_drops; } ;
struct hfi1_ibport {size_t* sc_to_sl; TYPE_1__ rvp; } ;


 size_t IB_CC_SVCTYPE_RC ;
 size_t IB_CC_SVCTYPE_UC ;
 size_t IB_CC_SVCTYPE_UD ;





 size_t hfi1_9B_get_sc5 (struct ib_header*,int ) ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 int process_becn (struct hfi1_pportdata*,size_t,int ,int ,int ,size_t) ;
 struct hfi1_ibport* rcd_to_iport (int ) ;
 int rdma_ah_get_dlid (int *) ;

void hfi1_cnp_rcv(struct hfi1_packet *packet)
{
 struct hfi1_ibport *ibp = rcd_to_iport(packet->rcd);
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);
 struct ib_header *hdr = packet->hdr;
 struct rvt_qp *qp = packet->qp;
 u32 lqpn, rqpn = 0;
 u16 rlid = 0;
 u8 sl, sc5, svc_type;

 switch (packet->qp->ibqp.qp_type) {
 case 129:
  rlid = rdma_ah_get_dlid(&qp->remote_ah_attr);
  rqpn = qp->remote_qpn;
  svc_type = IB_CC_SVCTYPE_UC;
  break;
 case 131:
  rlid = rdma_ah_get_dlid(&qp->remote_ah_attr);
  rqpn = qp->remote_qpn;
  svc_type = IB_CC_SVCTYPE_RC;
  break;
 case 130:
 case 132:
 case 128:
  svc_type = IB_CC_SVCTYPE_UD;
  break;
 default:
  ibp->rvp.n_pkt_drops++;
  return;
 }

 sc5 = hfi1_9B_get_sc5(hdr, packet->rhf);
 sl = ibp->sc_to_sl[sc5];
 lqpn = qp->ibqp.qp_num;

 process_becn(ppd, sl, rlid, lqpn, rqpn, svc_type);
}
