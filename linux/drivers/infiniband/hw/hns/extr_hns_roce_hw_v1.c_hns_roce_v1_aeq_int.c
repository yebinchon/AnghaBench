
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hns_roce_eq {int cons_index; int eqn; } ;
struct TYPE_10__ {int aeqe_depth; } ;
struct hns_roce_dev {TYPE_5__ caps; TYPE_1__* pdev; } ;
struct TYPE_8__ {int ceqe; } ;
struct TYPE_7__ {int out_param; int status; int token; } ;
struct TYPE_9__ {TYPE_3__ ce_event; TYPE_2__ cmd; } ;
struct hns_roce_aeqe {TYPE_4__ event; int asyn; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;


 int HNS_ROCE_AEQE_EVENT_CE_EVENT_CEQE_CEQN_M ;
 int HNS_ROCE_AEQE_EVENT_CE_EVENT_CEQE_CEQN_S ;
 int HNS_ROCE_AEQE_U32_4_EVENT_TYPE_M ;
 int HNS_ROCE_AEQE_U32_4_EVENT_TYPE_S ;
 int dev_dbg (struct device*,char*,struct hns_roce_aeqe*,int) ;
 int dev_warn (struct device*,char*,...) ;
 int dma_rmb () ;
 int hns_roce_cmd_event (struct hns_roce_dev*,int ,int ,int ) ;
 int hns_roce_v1_cq_err_handle (struct hns_roce_dev*,struct hns_roce_aeqe*,int) ;
 int hns_roce_v1_db_overflow_handle (struct hns_roce_dev*,struct hns_roce_aeqe*) ;
 int hns_roce_v1_qp_err_handle (struct hns_roce_dev*,struct hns_roce_aeqe*,int) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 struct hns_roce_aeqe* next_aeqe_sw_v1 (struct hns_roce_eq*) ;
 int roce_get_field (int ,int ,int ) ;
 int set_eq_cons_index_v1 (struct hns_roce_eq*,int ) ;

__attribute__((used)) static int hns_roce_v1_aeq_int(struct hns_roce_dev *hr_dev,
          struct hns_roce_eq *eq)
{
 struct device *dev = &hr_dev->pdev->dev;
 struct hns_roce_aeqe *aeqe;
 int aeqes_found = 0;
 int event_type;

 while ((aeqe = next_aeqe_sw_v1(eq))) {




  dma_rmb();

  dev_dbg(dev, "aeqe = %pK, aeqe->asyn.event_type = 0x%lx\n",
   aeqe,
   roce_get_field(aeqe->asyn,
           HNS_ROCE_AEQE_U32_4_EVENT_TYPE_M,
           HNS_ROCE_AEQE_U32_4_EVENT_TYPE_S));
  event_type = roce_get_field(aeqe->asyn,
         HNS_ROCE_AEQE_U32_4_EVENT_TYPE_M,
         HNS_ROCE_AEQE_U32_4_EVENT_TYPE_S);
  switch (event_type) {
  case 135:
   dev_warn(dev, "PATH MIG not supported\n");
   break;
  case 143:
   dev_warn(dev, "COMMUNICATION established\n");
   break;
  case 132:
   dev_warn(dev, "SQ DRAINED not supported\n");
   break;
  case 134:
   dev_warn(dev, "PATH MIG failed\n");
   break;
  case 138:
  case 128:
  case 137:
   hns_roce_v1_qp_err_handle(hr_dev, aeqe, event_type);
   break;
  case 129:
  case 131:
  case 130:
   dev_warn(dev, "SRQ not support!\n");
   break;
  case 142:
  case 140:
  case 141:
   hns_roce_v1_cq_err_handle(hr_dev, aeqe, event_type);
   break;
  case 133:
   dev_warn(dev, "port change.\n");
   break;
  case 136:
   hns_roce_cmd_event(hr_dev,
        le16_to_cpu(aeqe->event.cmd.token),
        aeqe->event.cmd.status,
        le64_to_cpu(aeqe->event.cmd.out_param
        ));
   break;
  case 139:
   hns_roce_v1_db_overflow_handle(hr_dev, aeqe);
   break;
  case 144:
   dev_warn(dev, "CEQ 0x%lx overflow.\n",
   roce_get_field(aeqe->event.ce_event.ceqe,
         HNS_ROCE_AEQE_EVENT_CE_EVENT_CEQE_CEQN_M,
         HNS_ROCE_AEQE_EVENT_CE_EVENT_CEQE_CEQN_S));
   break;
  default:
   dev_warn(dev, "Unhandled event %d on EQ %d at idx %u.\n",
     event_type, eq->eqn, eq->cons_index);
   break;
  }

  eq->cons_index++;
  aeqes_found = 1;

  if (eq->cons_index > 2 * hr_dev->caps.aeqe_depth - 1) {
   dev_warn(dev, "cons_index overflow, set back to 0.\n");
   eq->cons_index = 0;
  }
 }

 set_eq_cons_index_v1(eq, 0);

 return aeqes_found;
}
