
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hns_roce_srq {int dummy; } ;
struct hns_roce_cqe {int cqe_byte_4; int cqe_byte_16; } ;
struct TYPE_2__ {int cqe; } ;
struct hns_roce_cq {int cons_index; TYPE_1__ ib_cq; } ;


 int CQE_BYTE_16_LOCAL_QPN_M ;
 int CQE_BYTE_16_LOCAL_QPN_S ;
 int CQE_BYTE_4_OWNER_S ;
 int HNS_ROCE_CQE_QPN_MASK ;
 struct hns_roce_cqe* get_cqe (struct hns_roce_cq*,int) ;
 scalar_t__ get_sw_cqe (struct hns_roce_cq*,int) ;
 int hns_roce_v1_cq_set_ci (struct hns_roce_cq*,int) ;
 int memcpy (struct hns_roce_cqe*,struct hns_roce_cqe*,int) ;
 int roce_get_bit (int ,int ) ;
 int roce_get_field (int ,int ,int ) ;
 int roce_set_bit (int ,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void __hns_roce_v1_cq_clean(struct hns_roce_cq *hr_cq, u32 qpn,
       struct hns_roce_srq *srq)
{
 struct hns_roce_cqe *cqe, *dest;
 u32 prod_index;
 int nfreed = 0;
 u8 owner_bit;

 for (prod_index = hr_cq->cons_index; get_sw_cqe(hr_cq, prod_index);
      ++prod_index) {
  if (prod_index == hr_cq->cons_index + hr_cq->ib_cq.cqe)
   break;
 }





 while ((int) --prod_index - (int) hr_cq->cons_index >= 0) {
  cqe = get_cqe(hr_cq, prod_index & hr_cq->ib_cq.cqe);
  if ((roce_get_field(cqe->cqe_byte_16, CQE_BYTE_16_LOCAL_QPN_M,
         CQE_BYTE_16_LOCAL_QPN_S) &
         HNS_ROCE_CQE_QPN_MASK) == qpn) {

   ++nfreed;
  } else if (nfreed) {
   dest = get_cqe(hr_cq, (prod_index + nfreed) &
           hr_cq->ib_cq.cqe);
   owner_bit = roce_get_bit(dest->cqe_byte_4,
       CQE_BYTE_4_OWNER_S);
   memcpy(dest, cqe, sizeof(*cqe));
   roce_set_bit(dest->cqe_byte_4, CQE_BYTE_4_OWNER_S,
         owner_bit);
  }
 }

 if (nfreed) {
  hr_cq->cons_index += nfreed;




  wmb();

  hns_roce_v1_cq_set_ci(hr_cq, hr_cq->cons_index);
 }
}
