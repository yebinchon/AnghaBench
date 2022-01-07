
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct siw_wqe {size_t processed; scalar_t__ bytes; int wc_status; } ;
struct iwarp_send_inv {int inval_stag; int ddp_qn; int ddp_mo; int ddp_msn; } ;
struct TYPE_2__ {struct iwarp_send_inv send_inv; } ;
struct siw_rx_stream {size_t* ddp_msn; scalar_t__ fpdu_part_rem; void* inval_stag; TYPE_1__ hdr; } ;
struct siw_rx_fpdu {scalar_t__ pbl_idx; scalar_t__ sge_off; scalar_t__ sge_idx; scalar_t__ first_ddp_seg; struct siw_wqe wqe_active; } ;
typedef enum ddp_ecode { ____Placeholder_ddp_ecode } ddp_ecode ;


 int DDP_ECODE_UT_INVALID_MO ;
 int DDP_ECODE_UT_INVALID_MSN_NOBUF ;
 int DDP_ECODE_UT_INVALID_MSN_RANGE ;
 int DDP_ECODE_UT_INVALID_QN ;
 int DDP_ETYPE_UNTAGGED_BUF ;
 int EINVAL ;
 size_t RDMAP_UNTAGGED_QN_SEND ;
 int SIW_WC_LOC_LEN_ERR ;
 int TERM_ERROR_LAYER_DDP ;
 void* be32_to_cpu (int ) ;
 int pr_warn (char*,int ,size_t,...) ;
 int qp_id (int ) ;
 int rx_qp (struct siw_rx_stream*) ;
 int siw_dbg_qp (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int siw_init_terminate (int ,int ,int ,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int siw_send_check_ntoh(struct siw_rx_stream *srx,
          struct siw_rx_fpdu *frx)
{
 struct iwarp_send_inv *send = &srx->hdr.send_inv;
 struct siw_wqe *wqe = &frx->wqe_active;
 enum ddp_ecode ecode;

 u32 ddp_msn = be32_to_cpu(send->ddp_msn);
 u32 ddp_mo = be32_to_cpu(send->ddp_mo);
 u32 ddp_qn = be32_to_cpu(send->ddp_qn);

 if (unlikely(ddp_qn != RDMAP_UNTAGGED_QN_SEND)) {
  pr_warn("siw: [QP %u]: invalid ddp qn %d for send\n",
   qp_id(rx_qp(srx)), ddp_qn);
  ecode = DDP_ECODE_UT_INVALID_QN;
  goto error;
 }
 if (unlikely(ddp_msn != srx->ddp_msn[RDMAP_UNTAGGED_QN_SEND])) {
  pr_warn("siw: [QP %u]: send msn: %u != %u\n",
   qp_id(rx_qp(srx)), ddp_msn,
   srx->ddp_msn[RDMAP_UNTAGGED_QN_SEND]);
  ecode = DDP_ECODE_UT_INVALID_MSN_RANGE;
  goto error;
 }
 if (unlikely(ddp_mo != wqe->processed)) {
  pr_warn("siw: [QP %u], send mo: %u != %u\n",
   qp_id(rx_qp(srx)), ddp_mo, wqe->processed);
  ecode = DDP_ECODE_UT_INVALID_MO;
  goto error;
 }
 if (frx->first_ddp_seg) {

  frx->sge_idx = 0;
  frx->sge_off = 0;
  frx->pbl_idx = 0;


  srx->inval_stag = be32_to_cpu(send->inval_stag);
 }
 if (unlikely(wqe->bytes < wqe->processed + srx->fpdu_part_rem)) {
  siw_dbg_qp(rx_qp(srx), "receive space short: %d - %d < %d\n",
      wqe->bytes, wqe->processed, srx->fpdu_part_rem);
  wqe->wc_status = SIW_WC_LOC_LEN_ERR;
  ecode = DDP_ECODE_UT_INVALID_MSN_NOBUF;
  goto error;
 }
 return 0;
error:
 siw_init_terminate(rx_qp(srx), TERM_ERROR_LAYER_DDP,
      DDP_ETYPE_UNTAGGED_BUF, ecode, 0);
 return -EINVAL;
}
