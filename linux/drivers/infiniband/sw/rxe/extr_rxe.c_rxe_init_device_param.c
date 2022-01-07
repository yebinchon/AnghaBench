
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_cqe; int local_ca_ack_delay; int max_pkeys; int max_fast_reg_page_list_len; int max_srq_sge; int max_srq_wr; int max_srq; int max_map_per_fmr; int max_fmr; int max_ah; int max_total_mcast_qp_attach; int max_mcast_qp_attach; int max_mcast_grp; int max_raw_ethy_qp; int max_raw_ipv6_qp; int max_mw; int max_rdd; int max_ee; int atomic_cap; int max_ee_init_rd_atom; int max_qp_init_rd_atom; int max_res_rd_atom; int max_ee_rd_atom; int max_qp_rd_atom; int max_pd; int max_mr; int max_cq; int max_sge_rd; void* max_recv_sge; void* max_send_sge; int device_cap_flags; int max_qp_wr; int max_qp; int hw_ver; int vendor_part_id; int vendor_id; int page_size_cap; int max_mr_size; int fw_ver; } ;
struct rxe_dev {int max_ucontext; TYPE_1__ attr; int max_inline_data; } ;


 int IB_ATOMIC_HCA ;
 int RXE_DEVICE_CAP_FLAGS ;
 int RXE_FW_VER ;
 int RXE_HW_VER ;
 int RXE_LOCAL_CA_ACK_DELAY ;
 int RXE_MAX_AH ;
 int RXE_MAX_CQ ;
 int RXE_MAX_EE ;
 int RXE_MAX_EE_INIT_RD_ATOM ;
 int RXE_MAX_EE_RD_ATOM ;
 int RXE_MAX_FMR ;
 int RXE_MAX_FMR_PAGE_LIST_LEN ;
 int RXE_MAX_INLINE_DATA ;
 int RXE_MAX_LOG_CQE ;
 int RXE_MAX_MAP_PER_FMR ;
 int RXE_MAX_MCAST_GRP ;
 int RXE_MAX_MCAST_QP_ATTACH ;
 int RXE_MAX_MR ;
 int RXE_MAX_MR_SIZE ;
 int RXE_MAX_MW ;
 int RXE_MAX_PD ;
 int RXE_MAX_PKEYS ;
 int RXE_MAX_QP ;
 int RXE_MAX_QP_INIT_RD_ATOM ;
 int RXE_MAX_QP_RD_ATOM ;
 int RXE_MAX_QP_WR ;
 int RXE_MAX_RAW_ETHY_QP ;
 int RXE_MAX_RAW_IPV6_QP ;
 int RXE_MAX_RDD ;
 int RXE_MAX_RES_RD_ATOM ;
 void* RXE_MAX_SGE ;
 int RXE_MAX_SGE_RD ;
 int RXE_MAX_SRQ ;
 int RXE_MAX_SRQ_SGE ;
 int RXE_MAX_SRQ_WR ;
 int RXE_MAX_TOT_MCAST_QP_ATTACH ;
 int RXE_MAX_UCONTEXT ;
 int RXE_PAGE_SIZE_CAP ;
 int RXE_VENDOR_ID ;
 int RXE_VENDOR_PART_ID ;

__attribute__((used)) static void rxe_init_device_param(struct rxe_dev *rxe)
{
 rxe->max_inline_data = RXE_MAX_INLINE_DATA;

 rxe->attr.fw_ver = RXE_FW_VER;
 rxe->attr.max_mr_size = RXE_MAX_MR_SIZE;
 rxe->attr.page_size_cap = RXE_PAGE_SIZE_CAP;
 rxe->attr.vendor_id = RXE_VENDOR_ID;
 rxe->attr.vendor_part_id = RXE_VENDOR_PART_ID;
 rxe->attr.hw_ver = RXE_HW_VER;
 rxe->attr.max_qp = RXE_MAX_QP;
 rxe->attr.max_qp_wr = RXE_MAX_QP_WR;
 rxe->attr.device_cap_flags = RXE_DEVICE_CAP_FLAGS;
 rxe->attr.max_send_sge = RXE_MAX_SGE;
 rxe->attr.max_recv_sge = RXE_MAX_SGE;
 rxe->attr.max_sge_rd = RXE_MAX_SGE_RD;
 rxe->attr.max_cq = RXE_MAX_CQ;
 rxe->attr.max_cqe = (1 << RXE_MAX_LOG_CQE) - 1;
 rxe->attr.max_mr = RXE_MAX_MR;
 rxe->attr.max_pd = RXE_MAX_PD;
 rxe->attr.max_qp_rd_atom = RXE_MAX_QP_RD_ATOM;
 rxe->attr.max_ee_rd_atom = RXE_MAX_EE_RD_ATOM;
 rxe->attr.max_res_rd_atom = RXE_MAX_RES_RD_ATOM;
 rxe->attr.max_qp_init_rd_atom = RXE_MAX_QP_INIT_RD_ATOM;
 rxe->attr.max_ee_init_rd_atom = RXE_MAX_EE_INIT_RD_ATOM;
 rxe->attr.atomic_cap = IB_ATOMIC_HCA;
 rxe->attr.max_ee = RXE_MAX_EE;
 rxe->attr.max_rdd = RXE_MAX_RDD;
 rxe->attr.max_mw = RXE_MAX_MW;
 rxe->attr.max_raw_ipv6_qp = RXE_MAX_RAW_IPV6_QP;
 rxe->attr.max_raw_ethy_qp = RXE_MAX_RAW_ETHY_QP;
 rxe->attr.max_mcast_grp = RXE_MAX_MCAST_GRP;
 rxe->attr.max_mcast_qp_attach = RXE_MAX_MCAST_QP_ATTACH;
 rxe->attr.max_total_mcast_qp_attach = RXE_MAX_TOT_MCAST_QP_ATTACH;
 rxe->attr.max_ah = RXE_MAX_AH;
 rxe->attr.max_fmr = RXE_MAX_FMR;
 rxe->attr.max_map_per_fmr = RXE_MAX_MAP_PER_FMR;
 rxe->attr.max_srq = RXE_MAX_SRQ;
 rxe->attr.max_srq_wr = RXE_MAX_SRQ_WR;
 rxe->attr.max_srq_sge = RXE_MAX_SRQ_SGE;
 rxe->attr.max_fast_reg_page_list_len = RXE_MAX_FMR_PAGE_LIST_LEN;
 rxe->attr.max_pkeys = RXE_MAX_PKEYS;
 rxe->attr.local_ca_ack_delay = RXE_LOCAL_CA_ACK_DELAY;

 rxe->max_ucontext = RXE_MAX_UCONTEXT;
}
