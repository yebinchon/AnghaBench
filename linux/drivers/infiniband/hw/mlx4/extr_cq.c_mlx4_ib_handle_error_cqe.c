
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_err_cqe {int syndrome; int owner_sr_opcode; int vendor_err_syndrome; int wqe_index; int my_qpn; } ;
struct ib_wc {int vendor_err; int status; } ;


 int IB_WC_BAD_RESP_ERR ;
 int IB_WC_GENERAL_ERR ;
 int IB_WC_LOC_ACCESS_ERR ;
 int IB_WC_LOC_LEN_ERR ;
 int IB_WC_LOC_PROT_ERR ;
 int IB_WC_LOC_QP_OP_ERR ;
 int IB_WC_MW_BIND_ERR ;
 int IB_WC_REM_ABORT_ERR ;
 int IB_WC_REM_ACCESS_ERR ;
 int IB_WC_REM_INV_REQ_ERR ;
 int IB_WC_REM_OP_ERR ;
 int IB_WC_RETRY_EXC_ERR ;
 int IB_WC_RNR_RETRY_EXC_ERR ;
 int IB_WC_WR_FLUSH_ERR ;
 int MLX4_CQE_OWNER_MASK ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int dump_cqe (struct mlx4_err_cqe*) ;
 int pr_debug (char*,int ,int ,int ,int) ;

__attribute__((used)) static void mlx4_ib_handle_error_cqe(struct mlx4_err_cqe *cqe,
         struct ib_wc *wc)
{
 if (cqe->syndrome == 136) {
  pr_debug("local QP operation err "
         "(QPN %06x, WQE index %x, vendor syndrome %02x, "
         "opcode = %02x)\n",
         be32_to_cpu(cqe->my_qpn), be16_to_cpu(cqe->wqe_index),
         cqe->vendor_err_syndrome,
         cqe->owner_sr_opcode & ~MLX4_CQE_OWNER_MASK);
  dump_cqe(cqe);
 }

 switch (cqe->syndrome) {
 case 138:
  wc->status = IB_WC_LOC_LEN_ERR;
  break;
 case 136:
  wc->status = IB_WC_LOC_QP_OP_ERR;
  break;
 case 137:
  wc->status = IB_WC_LOC_PROT_ERR;
  break;
 case 128:
  wc->status = IB_WC_WR_FLUSH_ERR;
  break;
 case 135:
  wc->status = IB_WC_MW_BIND_ERR;
  break;
 case 140:
  wc->status = IB_WC_BAD_RESP_ERR;
  break;
 case 139:
  wc->status = IB_WC_LOC_ACCESS_ERR;
  break;
 case 132:
  wc->status = IB_WC_REM_INV_REQ_ERR;
  break;
 case 133:
  wc->status = IB_WC_REM_ACCESS_ERR;
  break;
 case 131:
  wc->status = IB_WC_REM_OP_ERR;
  break;
 case 129:
  wc->status = IB_WC_RETRY_EXC_ERR;
  break;
 case 130:
  wc->status = IB_WC_RNR_RETRY_EXC_ERR;
  break;
 case 134:
  wc->status = IB_WC_REM_ABORT_ERR;
  break;
 default:
  wc->status = IB_WC_GENERAL_ERR;
  break;
 }

 wc->vendor_err = cqe->vendor_err_syndrome;
}
