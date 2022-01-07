
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct hns_roce_v2_cqe {int byte_4; int byte_16; } ;
struct hns_roce_srq {int dummy; } ;
struct TYPE_2__ {int cqe; } ;
struct hns_roce_cq {int cons_index; TYPE_1__ ib_cq; } ;


 int HNS_ROCE_V2_CQE_QPN_MASK ;
 int V2_CQE_BYTE_16_LCL_QPN_M ;
 int V2_CQE_BYTE_16_LCL_QPN_S ;
 int V2_CQE_BYTE_4_OWNER_S ;
 int V2_CQE_BYTE_4_S_R_S ;
 int V2_CQE_BYTE_4_WQE_INDX_M ;
 int V2_CQE_BYTE_4_WQE_INDX_S ;
 struct hns_roce_v2_cqe* get_cqe_v2 (struct hns_roce_cq*,int) ;
 scalar_t__ get_sw_cqe_v2 (struct hns_roce_cq*,int) ;
 int hns_roce_free_srq_wqe (struct hns_roce_srq*,int) ;
 int hns_roce_v2_cq_set_ci (struct hns_roce_cq*,int) ;
 int memcpy (struct hns_roce_v2_cqe*,struct hns_roce_v2_cqe*,int) ;
 scalar_t__ roce_get_bit (int ,int ) ;
 int roce_get_field (int ,int ,int ) ;
 int roce_set_bit (int ,int ,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void __hns_roce_v2_cq_clean(struct hns_roce_cq *hr_cq, u32 qpn,
       struct hns_roce_srq *srq)
{
 struct hns_roce_v2_cqe *cqe, *dest;
 u32 prod_index;
 int nfreed = 0;
 int wqe_index;
 u8 owner_bit;

 for (prod_index = hr_cq->cons_index; get_sw_cqe_v2(hr_cq, prod_index);
      ++prod_index) {
  if (prod_index > hr_cq->cons_index + hr_cq->ib_cq.cqe)
   break;
 }





 while ((int) --prod_index - (int) hr_cq->cons_index >= 0) {
  cqe = get_cqe_v2(hr_cq, prod_index & hr_cq->ib_cq.cqe);
  if ((roce_get_field(cqe->byte_16, V2_CQE_BYTE_16_LCL_QPN_M,
        V2_CQE_BYTE_16_LCL_QPN_S) &
        HNS_ROCE_V2_CQE_QPN_MASK) == qpn) {
   if (srq &&
       roce_get_bit(cqe->byte_4, V2_CQE_BYTE_4_S_R_S)) {
    wqe_index = roce_get_field(cqe->byte_4,
           V2_CQE_BYTE_4_WQE_INDX_M,
           V2_CQE_BYTE_4_WQE_INDX_S);
    hns_roce_free_srq_wqe(srq, wqe_index);
   }
   ++nfreed;
  } else if (nfreed) {
   dest = get_cqe_v2(hr_cq, (prod_index + nfreed) &
       hr_cq->ib_cq.cqe);
   owner_bit = roce_get_bit(dest->byte_4,
       V2_CQE_BYTE_4_OWNER_S);
   memcpy(dest, cqe, sizeof(*cqe));
   roce_set_bit(dest->byte_4, V2_CQE_BYTE_4_OWNER_S,
         owner_bit);
  }
 }

 if (nfreed) {
  hr_cq->cons_index += nfreed;




  wmb();
  hns_roce_v2_cq_set_ci(hr_cq, hr_cq->cons_index);
 }
}
