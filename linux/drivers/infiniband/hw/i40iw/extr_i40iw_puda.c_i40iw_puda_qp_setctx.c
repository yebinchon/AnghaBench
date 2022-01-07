
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct i40iw_sc_qp {int sq_pa; int rq_pa; uintptr_t hw_rq_size; uintptr_t hw_sq_size; uintptr_t sq_tph_val; uintptr_t rq_tph_val; uintptr_t qs_handle; int * hw_host_ctx; } ;
struct i40iw_puda_rsrc {uintptr_t buf_size; uintptr_t cq_id; int dev; struct i40iw_sc_qp qp; } ;


 int I40IWQPC_PRIVEN ;
 int I40IWQPC_QPCOMPCTX ;
 int I40IWQPC_QSHANDLE ;
 int I40IWQPC_RQSIZE ;
 int I40IWQPC_RQTPHVAL ;
 int I40IWQPC_RXCQNUM ;
 int I40IWQPC_SQSIZE ;
 int I40IWQPC_SQTPHVAL ;
 int I40IWQPC_TXCQNUM ;
 int I40IW_DEBUG_PUDA ;
 int I40IW_QP_CTX_SIZE ;
 int I40IW_UDA_QPC_MAXFRAMESIZE ;
 int LS_64 (uintptr_t,int ) ;
 int i40iw_debug_buf (int ,int ,char*,int *,int ) ;
 int set_64bit_val (int *,int,int) ;

__attribute__((used)) static void i40iw_puda_qp_setctx(struct i40iw_puda_rsrc *rsrc)
{
 struct i40iw_sc_qp *qp = &rsrc->qp;
 u64 *qp_ctx = qp->hw_host_ctx;

 set_64bit_val(qp_ctx, 8, qp->sq_pa);
 set_64bit_val(qp_ctx, 16, qp->rq_pa);

 set_64bit_val(qp_ctx, 24,
        LS_64(qp->hw_rq_size, I40IWQPC_RQSIZE) |
        LS_64(qp->hw_sq_size, I40IWQPC_SQSIZE));

 set_64bit_val(qp_ctx, 48, LS_64(rsrc->buf_size, I40IW_UDA_QPC_MAXFRAMESIZE));
 set_64bit_val(qp_ctx, 56, 0);
 set_64bit_val(qp_ctx, 64, 1);

 set_64bit_val(qp_ctx, 136,
        LS_64(rsrc->cq_id, I40IWQPC_TXCQNUM) |
        LS_64(rsrc->cq_id, I40IWQPC_RXCQNUM));

 set_64bit_val(qp_ctx, 160, LS_64(1, I40IWQPC_PRIVEN));

 set_64bit_val(qp_ctx, 168,
        LS_64((uintptr_t)qp, I40IWQPC_QPCOMPCTX));

 set_64bit_val(qp_ctx, 176,
        LS_64(qp->sq_tph_val, I40IWQPC_SQTPHVAL) |
        LS_64(qp->rq_tph_val, I40IWQPC_RQTPHVAL) |
        LS_64(qp->qs_handle, I40IWQPC_QSHANDLE));

 i40iw_debug_buf(rsrc->dev, I40IW_DEBUG_PUDA, "PUDA QP CONTEXT",
   qp_ctx, I40IW_QP_CTX_SIZE);
}
