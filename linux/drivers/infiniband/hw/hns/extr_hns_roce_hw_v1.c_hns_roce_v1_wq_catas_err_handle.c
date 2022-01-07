
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







 int dev_warn (struct device*,char*,...) ;
 int roce_get_field (int ,int ,int ) ;

__attribute__((used)) static void hns_roce_v1_wq_catas_err_handle(struct hns_roce_dev *hr_dev,
         struct hns_roce_aeqe *aeqe, int qpn)
{
 struct device *dev = &hr_dev->pdev->dev;

 dev_warn(dev, "Local Work Queue Catastrophic Error.\n");
 switch (roce_get_field(aeqe->asyn, HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_M,
          HNS_ROCE_AEQE_U32_4_EVENT_SUB_TYPE_S)) {
 case 132:
  dev_warn(dev, "QP %d, QPC error.\n", qpn);
  break;
 case 134:
  dev_warn(dev, "QP %d, MTU error.\n", qpn);
  break;
 case 128:
  dev_warn(dev, "QP %d, WQE BA addr error.\n", qpn);
  break;
 case 129:
  dev_warn(dev, "QP %d, WQE addr error.\n", qpn);
  break;
 case 130:
  dev_warn(dev, "QP %d, WQE shift error\n", qpn);
  break;
 case 131:
  dev_warn(dev, "QP %d, SL error.\n", qpn);
  break;
 case 133:
  dev_warn(dev, "QP %d, port error.\n", qpn);
  break;
 default:
  break;
 }
}
