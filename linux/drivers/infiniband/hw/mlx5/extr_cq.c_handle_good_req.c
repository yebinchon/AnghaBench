
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_wq {int dummy; } ;
struct mlx5_cqe64 {int byte_cnt; int sop_drop_qpn; } ;
struct ib_wc {int byte_len; int opcode; scalar_t__ wc_flags; } ;


 int IB_WC_COMP_SWAP ;
 int IB_WC_FETCH_ADD ;
 int IB_WC_MASKED_COMP_SWAP ;
 int IB_WC_MASKED_FETCH_ADD ;
 int IB_WC_RDMA_READ ;
 int IB_WC_RDMA_WRITE ;
 int IB_WC_SEND ;
 scalar_t__ IB_WC_WITH_IMM ;
 int be32_to_cpu (int ) ;
 int get_umr_comp (struct mlx5_ib_wq*,int) ;

__attribute__((used)) static void handle_good_req(struct ib_wc *wc, struct mlx5_cqe64 *cqe,
       struct mlx5_ib_wq *wq, int idx)
{
 wc->wc_flags = 0;
 switch (be32_to_cpu(cqe->sop_drop_qpn) >> 24) {
 case 132:
  wc->wc_flags |= IB_WC_WITH_IMM;

 case 133:
  wc->opcode = IB_WC_RDMA_WRITE;
  break;
 case 130:
  wc->wc_flags |= IB_WC_WITH_IMM;

 case 131:
 case 129:
  wc->opcode = IB_WC_SEND;
  break;
 case 134:
  wc->opcode = IB_WC_RDMA_READ;
  wc->byte_len = be32_to_cpu(cqe->byte_cnt);
  break;
 case 138:
  wc->opcode = IB_WC_COMP_SWAP;
  wc->byte_len = 8;
  break;
 case 137:
  wc->opcode = IB_WC_FETCH_ADD;
  wc->byte_len = 8;
  break;
 case 136:
  wc->opcode = IB_WC_MASKED_COMP_SWAP;
  wc->byte_len = 8;
  break;
 case 135:
  wc->opcode = IB_WC_MASKED_FETCH_ADD;
  wc->byte_len = 8;
  break;
 case 128:
  wc->opcode = get_umr_comp(wq, idx);
  break;
 }
}
