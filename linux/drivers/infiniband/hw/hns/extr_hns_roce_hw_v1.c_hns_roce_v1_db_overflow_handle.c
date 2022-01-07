
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_dev {TYPE_1__* pdev; } ;
struct hns_roce_aeqe {int asyn; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_M ;
 int HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_S ;






 int dev_warn (struct device*,char*) ;
 int roce_get_field (int ,int ,int ) ;

__attribute__((used)) static void hns_roce_v1_db_overflow_handle(struct hns_roce_dev *hr_dev,
        struct hns_roce_aeqe *aeqe)
{
 struct device *dev = &hr_dev->pdev->dev;

 switch (roce_get_field(aeqe->asyn, HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_M,
          HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_S)) {
 case 128:
  dev_warn(dev, "SDB overflow.\n");
  break;
 case 129:
  dev_warn(dev, "SDB almost overflow.\n");
  break;
 case 130:
  dev_warn(dev, "SDB almost empty.\n");
  break;
 case 131:
  dev_warn(dev, "ODB overflow.\n");
  break;
 case 132:
  dev_warn(dev, "ODB almost overflow.\n");
  break;
 case 133:
  dev_warn(dev, "SDB almost empty.\n");
  break;
 default:
  break;
 }
}
