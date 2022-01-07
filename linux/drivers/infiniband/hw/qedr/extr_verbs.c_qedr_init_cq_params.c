
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qedr_ucontext {int dpi; } ;
struct qedr_dev {int dpi; } ;
struct qedr_cq {int dummy; } ;
struct qed_rdma_create_cq_in_params {int cnq_id; int cq_size; int pbl_num_pages; scalar_t__ pbl_two_level; int pbl_ptr; int dpi; int cq_handle_lo; int cq_handle_hi; } ;


 int lower_32_bits (uintptr_t) ;
 int memset (struct qed_rdma_create_cq_in_params*,int ,int) ;
 int upper_32_bits (uintptr_t) ;

__attribute__((used)) static inline void qedr_init_cq_params(struct qedr_cq *cq,
           struct qedr_ucontext *ctx,
           struct qedr_dev *dev, int vector,
           int chain_entries, int page_cnt,
           u64 pbl_ptr,
           struct qed_rdma_create_cq_in_params
           *params)
{
 memset(params, 0, sizeof(*params));
 params->cq_handle_hi = upper_32_bits((uintptr_t)cq);
 params->cq_handle_lo = lower_32_bits((uintptr_t)cq);
 params->cnq_id = vector;
 params->cq_size = chain_entries - 1;
 params->dpi = (ctx) ? ctx->dpi : dev->dpi;
 params->pbl_num_pages = page_cnt;
 params->pbl_ptr = pbl_ptr;
 params->pbl_two_level = 0;
}
