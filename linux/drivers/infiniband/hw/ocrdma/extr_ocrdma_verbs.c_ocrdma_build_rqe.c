
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ocrdma_sge {int dummy; } ;
struct ocrdma_hdr_wqe {int cw; int rsvd_tag; scalar_t__ total_len; } ;
struct ib_recv_wr {int num_sge; int sg_list; } ;


 int OCRDMA_FLAG_SIG ;
 int OCRDMA_TYPE_LKEY ;
 int OCRDMA_WQE_FLAGS_SHIFT ;
 int OCRDMA_WQE_SIZE_SHIFT ;
 int OCRDMA_WQE_STRIDE ;
 int OCRDMA_WQE_TYPE_SHIFT ;
 int ocrdma_build_sges (struct ocrdma_hdr_wqe*,struct ocrdma_sge*,int,int ) ;
 int ocrdma_cpu_to_le32 (struct ocrdma_hdr_wqe*,int) ;

__attribute__((used)) static void ocrdma_build_rqe(struct ocrdma_hdr_wqe *rqe,
        const struct ib_recv_wr *wr, u16 tag)
{
 u32 wqe_size = 0;
 struct ocrdma_sge *sge;
 if (wr->num_sge)
  wqe_size = (wr->num_sge * sizeof(*sge)) + sizeof(*rqe);
 else
  wqe_size = sizeof(*sge) + sizeof(*rqe);

 rqe->cw = ((wqe_size / OCRDMA_WQE_STRIDE) <<
    OCRDMA_WQE_SIZE_SHIFT);
 rqe->cw |= (OCRDMA_FLAG_SIG << OCRDMA_WQE_FLAGS_SHIFT);
 rqe->cw |= (OCRDMA_TYPE_LKEY << OCRDMA_WQE_TYPE_SHIFT);
 rqe->total_len = 0;
 rqe->rsvd_tag = tag;
 sge = (struct ocrdma_sge *)(rqe + 1);
 ocrdma_build_sges(rqe, sge, wr->num_sge, wr->sg_list);
 ocrdma_cpu_to_le32(rqe, wqe_size);
}
