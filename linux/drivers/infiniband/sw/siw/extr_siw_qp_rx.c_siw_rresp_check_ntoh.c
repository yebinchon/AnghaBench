
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {TYPE_2__* sge; } ;
struct siw_wqe {unsigned long long processed; unsigned long long bytes; TYPE_3__ sqe; } ;
struct iwarp_rdma_rresp {int sink_to; int sink_stag; } ;
struct TYPE_4__ {struct iwarp_rdma_rresp rresp; } ;
struct siw_rx_stream {scalar_t__ ddp_stag; scalar_t__ ddp_to; unsigned long long fpdu_part_rem; TYPE_1__ hdr; } ;
struct siw_rx_fpdu {int more_ddp_segs; scalar_t__ pbl_idx; scalar_t__ first_ddp_seg; struct siw_wqe wqe_active; } ;
typedef enum ddp_ecode { ____Placeholder_ddp_ecode } ddp_ecode ;
struct TYPE_5__ {scalar_t__ lkey; scalar_t__ laddr; } ;


 int DDP_ECODE_T_BASE_BOUNDS ;
 int DDP_ECODE_T_INVALID_STAG ;
 int DDP_ETYPE_TAGGED_BUF ;
 int EINVAL ;
 int TERM_ERROR_LAYER_DDP ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int pr_warn (char*,int ,unsigned long long,unsigned long long) ;
 int qp_id (int ) ;
 int rx_qp (struct siw_rx_stream*) ;
 int siw_init_terminate (int ,int ,int ,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int siw_rresp_check_ntoh(struct siw_rx_stream *srx,
    struct siw_rx_fpdu *frx)
{
 struct iwarp_rdma_rresp *rresp = &srx->hdr.rresp;
 struct siw_wqe *wqe = &frx->wqe_active;
 enum ddp_ecode ecode;

 u32 sink_stag = be32_to_cpu(rresp->sink_stag);
 u64 sink_to = be64_to_cpu(rresp->sink_to);

 if (frx->first_ddp_seg) {
  srx->ddp_stag = wqe->sqe.sge[0].lkey;
  srx->ddp_to = wqe->sqe.sge[0].laddr;
  frx->pbl_idx = 0;
 }
 if (unlikely(srx->ddp_stag != sink_stag)) {
  pr_warn("siw: [QP %u]: rresp stag: %08x != %08x\n",
   qp_id(rx_qp(srx)), sink_stag, srx->ddp_stag);
  ecode = DDP_ECODE_T_INVALID_STAG;
  goto error;
 }
 if (unlikely(srx->ddp_to != sink_to)) {
  pr_warn("siw: [QP %u]: rresp off: %016llx != %016llx\n",
   qp_id(rx_qp(srx)), (unsigned long long)sink_to,
   (unsigned long long)srx->ddp_to);
  ecode = DDP_ECODE_T_BASE_BOUNDS;
  goto error;
 }
 if (unlikely(!frx->more_ddp_segs &&
       (wqe->processed + srx->fpdu_part_rem != wqe->bytes))) {
  pr_warn("siw: [QP %u]: rresp len: %d != %d\n",
   qp_id(rx_qp(srx)),
   wqe->processed + srx->fpdu_part_rem, wqe->bytes);
  ecode = DDP_ECODE_T_BASE_BOUNDS;
  goto error;
 }
 return 0;
error:
 siw_init_terminate(rx_qp(srx), TERM_ERROR_LAYER_DDP,
      DDP_ETYPE_TAGGED_BUF, ecode, 0);
 return -EINVAL;
}
