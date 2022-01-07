
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef size_t u32 ;
struct TYPE_5__ {int swqe_polarity; TYPE_1__* sq_wrtrk_array; } ;
struct i40iw_sc_qp {TYPE_2__ qp_uk; int dev; } ;
struct i40iw_puda_send_info {int tcplen; int maclen; int doloopback; int paddr; int len; scalar_t__ scratch; scalar_t__ ipv4; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_4__ {uintptr_t wrid; } ;


 int I40IWQPSQ_FRAG_LEN ;
 int I40IW_DEBUG_PUDA ;
 int I40IW_ERR_QP_TOOMANY_WRS_POSTED ;
 int I40IW_OP_TYPE_SEND ;
 int I40IW_UDA_QPSQ_DOLOOPBACK ;
 int I40IW_UDA_QPSQ_IIPT ;
 int I40IW_UDA_QPSQ_IPLEN ;
 int I40IW_UDA_QPSQ_L4LEN ;
 int I40IW_UDA_QPSQ_L4T ;
 int I40IW_UDA_QPSQ_MACLEN ;
 int I40IW_UDA_QPSQ_OPCODE ;
 int I40IW_UDA_QPSQ_SIGCOMPL ;
 int I40IW_UDA_QPSQ_VALID ;
 int LS_64 (int,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int*,int) ;
 int i40iw_insert_wqe_hdr (int*,int) ;
 int* i40iw_puda_get_next_send_wqe (TYPE_2__*,size_t*) ;
 int i40iw_qp_post_wr (TYPE_2__*) ;
 int set_64bit_val (int*,int,int) ;

enum i40iw_status_code i40iw_puda_send(struct i40iw_sc_qp *qp,
           struct i40iw_puda_send_info *info)
{
 u64 *wqe;
 u32 iplen, l4len;
 u64 header[2];
 u32 wqe_idx;
 u8 iipt;


 l4len = info->tcplen >> 2;
 if (info->ipv4) {
  iipt = 3;
  iplen = 5;
 } else {
  iipt = 1;
  iplen = 10;
 }

 wqe = i40iw_puda_get_next_send_wqe(&qp->qp_uk, &wqe_idx);
 if (!wqe)
  return I40IW_ERR_QP_TOOMANY_WRS_POSTED;
 qp->qp_uk.sq_wrtrk_array[wqe_idx].wrid = (uintptr_t)info->scratch;


 header[0] = LS_64((info->maclen >> 1), I40IW_UDA_QPSQ_MACLEN) |
      LS_64(iplen, I40IW_UDA_QPSQ_IPLEN) | LS_64(1, I40IW_UDA_QPSQ_L4T) |
      LS_64(iipt, I40IW_UDA_QPSQ_IIPT) |
      LS_64(l4len, I40IW_UDA_QPSQ_L4LEN);

 header[1] = LS_64(I40IW_OP_TYPE_SEND, I40IW_UDA_QPSQ_OPCODE) |
      LS_64(1, I40IW_UDA_QPSQ_SIGCOMPL) |
      LS_64(info->doloopback, I40IW_UDA_QPSQ_DOLOOPBACK) |
      LS_64(qp->qp_uk.swqe_polarity, I40IW_UDA_QPSQ_VALID);

 set_64bit_val(wqe, 0, info->paddr);
 set_64bit_val(wqe, 8, LS_64(info->len, I40IWQPSQ_FRAG_LEN));
 set_64bit_val(wqe, 16, header[0]);

 i40iw_insert_wqe_hdr(wqe, header[1]);

 i40iw_debug_buf(qp->dev, I40IW_DEBUG_PUDA, "PUDA SEND WQE", wqe, 32);
 i40iw_qp_post_wr(&qp->qp_uk);
 return 0;
}
