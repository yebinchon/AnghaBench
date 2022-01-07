
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct hns_roce_eq {int cons_index; TYPE_3__* hr_dev; } ;
struct TYPE_4__ {int ceqe_depth; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;
struct hns_roce_ceqe {int comp; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int EQ_DEPTH_COEFF ;
 int HNS_ROCE_CEQE_CEQE_COMP_CQN_M ;
 int HNS_ROCE_CEQE_CEQE_COMP_CQN_S ;
 int dev_warn (int *,char*) ;
 int dma_rmb () ;
 int hns_roce_cq_completion (struct hns_roce_dev*,int ) ;
 struct hns_roce_ceqe* next_ceqe_sw_v1 (struct hns_roce_eq*) ;
 int roce_get_field (int ,int ,int ) ;
 int set_eq_cons_index_v1 (struct hns_roce_eq*,int ) ;

__attribute__((used)) static int hns_roce_v1_ceq_int(struct hns_roce_dev *hr_dev,
          struct hns_roce_eq *eq)
{
 struct hns_roce_ceqe *ceqe;
 int ceqes_found = 0;
 u32 cqn;

 while ((ceqe = next_ceqe_sw_v1(eq))) {




  dma_rmb();

  cqn = roce_get_field(ceqe->comp,
         HNS_ROCE_CEQE_CEQE_COMP_CQN_M,
         HNS_ROCE_CEQE_CEQE_COMP_CQN_S);
  hns_roce_cq_completion(hr_dev, cqn);

  ++eq->cons_index;
  ceqes_found = 1;

  if (eq->cons_index >
      EQ_DEPTH_COEFF * hr_dev->caps.ceqe_depth - 1) {
   dev_warn(&eq->hr_dev->pdev->dev,
    "cons_index overflow, set back to 0.\n");
   eq->cons_index = 0;
  }
 }

 set_eq_cons_index_v1(eq, 0);

 return ceqes_found;
}
