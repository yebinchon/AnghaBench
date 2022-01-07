
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct hns_roce_dev {TYPE_1__* pdev; } ;
struct TYPE_5__ {int cq; } ;
struct TYPE_6__ {TYPE_2__ cq_event; } ;
struct hns_roce_aeqe {TYPE_3__ event; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int HNS_ROCE_AEQE_EVENT_CQ_EVENT_CQ_CQN_M ;
 int HNS_ROCE_AEQE_EVENT_CQ_EVENT_CQ_CQN_S ;



 int dev_warn (struct device*,char*,int ) ;
 int hns_roce_cq_event (struct hns_roce_dev*,int ,int) ;
 int roce_get_field (int ,int ,int ) ;

__attribute__((used)) static void hns_roce_v1_cq_err_handle(struct hns_roce_dev *hr_dev,
          struct hns_roce_aeqe *aeqe,
          int event_type)
{
 struct device *dev = &hr_dev->pdev->dev;
 u32 cqn;

 cqn = roce_get_field(aeqe->event.cq_event.cq,
     HNS_ROCE_AEQE_EVENT_CQ_EVENT_CQ_CQN_M,
     HNS_ROCE_AEQE_EVENT_CQ_EVENT_CQ_CQN_S);

 switch (event_type) {
 case 130:
  dev_warn(dev, "CQ 0x%x access err.\n", cqn);
  break;
 case 128:
  dev_warn(dev, "CQ 0x%x overflow\n", cqn);
  break;
 case 129:
  dev_warn(dev, "CQ 0x%x ID invalid.\n", cqn);
  break;
 default:
  break;
 }

 hns_roce_cq_event(hr_dev, cqn, event_type);
}
