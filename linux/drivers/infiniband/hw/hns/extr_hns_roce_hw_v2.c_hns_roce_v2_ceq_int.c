
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_eq {int cons_index; int entries; } ;
struct hns_roce_dev {struct device* dev; } ;
struct hns_roce_ceqe {int comp; } ;
struct device {int dummy; } ;


 int EQ_DEPTH_COEFF ;
 int HNS_ROCE_V2_CEQE_COMP_CQN_M ;
 int HNS_ROCE_V2_CEQE_COMP_CQN_S ;
 int dev_warn (struct device*,char*) ;
 int dma_rmb () ;
 int hns_roce_cq_completion (struct hns_roce_dev*,int ) ;
 struct hns_roce_ceqe* next_ceqe_sw_v2 (struct hns_roce_eq*) ;
 int roce_get_field (int ,int ,int ) ;
 int set_eq_cons_index_v2 (struct hns_roce_eq*) ;

__attribute__((used)) static int hns_roce_v2_ceq_int(struct hns_roce_dev *hr_dev,
          struct hns_roce_eq *eq)
{
 struct device *dev = hr_dev->dev;
 struct hns_roce_ceqe *ceqe = next_ceqe_sw_v2(eq);
 int ceqe_found = 0;
 u32 cqn;

 while (ceqe) {



  dma_rmb();

  cqn = roce_get_field(ceqe->comp,
         HNS_ROCE_V2_CEQE_COMP_CQN_M,
         HNS_ROCE_V2_CEQE_COMP_CQN_S);

  hns_roce_cq_completion(hr_dev, cqn);

  ++eq->cons_index;
  ceqe_found = 1;

  if (eq->cons_index > (EQ_DEPTH_COEFF * eq->entries - 1)) {
   dev_warn(dev, "cons_index overflow, set back to 0.\n");
   eq->cons_index = 0;
  }

  ceqe = next_ceqe_sw_v2(eq);
 }

 set_eq_cons_index_v2(eq);

 return ceqe_found;
}
