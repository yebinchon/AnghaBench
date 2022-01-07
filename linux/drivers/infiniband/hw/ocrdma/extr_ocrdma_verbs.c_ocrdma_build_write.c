
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocrdma_sge {int len; int lrkey; int addr_hi; int addr_lo; } ;
struct ocrdma_qp {int dummy; } ;
struct ocrdma_hdr_wqe {int total_len; } ;
struct ib_send_wr {int dummy; } ;
struct TYPE_2__ {int rkey; int remote_addr; } ;


 int ocrdma_build_inline_sges (struct ocrdma_qp*,struct ocrdma_hdr_wqe*,struct ocrdma_sge*,struct ib_send_wr const*,int) ;
 TYPE_1__* rdma_wr (struct ib_send_wr const*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int ocrdma_build_write(struct ocrdma_qp *qp, struct ocrdma_hdr_wqe *hdr,
         const struct ib_send_wr *wr)
{
 int status;
 struct ocrdma_sge *ext_rw = (struct ocrdma_sge *)(hdr + 1);
 struct ocrdma_sge *sge = ext_rw + 1;
 u32 wqe_size = sizeof(*hdr) + sizeof(*ext_rw);

 status = ocrdma_build_inline_sges(qp, hdr, sge, wr, wqe_size);
 if (status)
  return status;
 ext_rw->addr_lo = rdma_wr(wr)->remote_addr;
 ext_rw->addr_hi = upper_32_bits(rdma_wr(wr)->remote_addr);
 ext_rw->lrkey = rdma_wr(wr)->rkey;
 ext_rw->len = hdr->total_len;
 return 0;
}
