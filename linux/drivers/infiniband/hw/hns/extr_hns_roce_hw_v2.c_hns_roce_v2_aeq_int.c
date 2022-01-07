
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u32 ;
struct hns_roce_eq {int cons_index; int event_type; int sub_type; int entries; int eqn; } ;
struct hns_roce_dev {struct device* dev; } ;
struct TYPE_9__ {int out_param; int status; int token; } ;
struct TYPE_8__ {int srq; } ;
struct TYPE_7__ {int cq; } ;
struct TYPE_6__ {int qp; } ;
struct TYPE_10__ {TYPE_4__ cmd; TYPE_3__ srq_event; TYPE_2__ cq_event; TYPE_1__ qp_event; } ;
struct hns_roce_aeqe {TYPE_5__ event; int asyn; } ;
struct device {int dummy; } ;
 int HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_M ;
 int HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_S ;
 int HNS_ROCE_V2_AEQE_EVENT_TYPE_M ;
 int HNS_ROCE_V2_AEQE_EVENT_TYPE_S ;
 int HNS_ROCE_V2_AEQE_SUB_TYPE_M ;
 int HNS_ROCE_V2_AEQE_SUB_TYPE_S ;
 int dev_err (struct device*,char*,int,int ,int) ;
 int dma_rmb () ;
 int hns_roce_cmd_event (struct hns_roce_dev*,int ,int ,int ) ;
 int hns_roce_cq_event (struct hns_roce_dev*,void*,int) ;
 int hns_roce_qp_event (struct hns_roce_dev*,void*,int) ;
 int hns_roce_srq_event (struct hns_roce_dev*,void*,int) ;
 int hns_roce_v2_init_irq_work (struct hns_roce_dev*,struct hns_roce_eq*,void*,void*) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 struct hns_roce_aeqe* next_aeqe_sw_v2 (struct hns_roce_eq*) ;
 void* roce_get_field (int ,int ,int ) ;
 int set_eq_cons_index_v2 (struct hns_roce_eq*) ;

__attribute__((used)) static int hns_roce_v2_aeq_int(struct hns_roce_dev *hr_dev,
          struct hns_roce_eq *eq)
{
 struct device *dev = hr_dev->dev;
 struct hns_roce_aeqe *aeqe = next_aeqe_sw_v2(eq);
 int aeqe_found = 0;
 int event_type;
 int sub_type;
 u32 srqn;
 u32 qpn;
 u32 cqn;

 while (aeqe) {



  dma_rmb();

  event_type = roce_get_field(aeqe->asyn,
         HNS_ROCE_V2_AEQE_EVENT_TYPE_M,
         HNS_ROCE_V2_AEQE_EVENT_TYPE_S);
  sub_type = roce_get_field(aeqe->asyn,
       HNS_ROCE_V2_AEQE_SUB_TYPE_M,
       HNS_ROCE_V2_AEQE_SUB_TYPE_S);
  qpn = roce_get_field(aeqe->event.qp_event.qp,
         HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_M,
         HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_S);
  cqn = roce_get_field(aeqe->event.cq_event.cq,
         HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_M,
         HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_S);
  srqn = roce_get_field(aeqe->event.srq_event.srq,
         HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_M,
         HNS_ROCE_V2_AEQE_EVENT_QUEUE_NUM_S);

  switch (event_type) {
  case 134:
  case 133:
  case 142:
  case 132:
  case 128:
  case 130:
  case 137:
  case 136:
   hns_roce_qp_event(hr_dev, qpn, event_type);
   break;
  case 129:
  case 131:
   hns_roce_srq_event(hr_dev, srqn, event_type);
   break;
  case 141:
  case 140:
   hns_roce_cq_event(hr_dev, cqn, event_type);
   break;
  case 139:
   break;
  case 135:
   hns_roce_cmd_event(hr_dev,
     le16_to_cpu(aeqe->event.cmd.token),
     aeqe->event.cmd.status,
     le64_to_cpu(aeqe->event.cmd.out_param));
   break;
  case 143:
   break;
  case 138:
   break;
  default:
   dev_err(dev, "Unhandled event %d on EQ %d at idx %u.\n",
    event_type, eq->eqn, eq->cons_index);
   break;
  }

  eq->event_type = event_type;
  eq->sub_type = sub_type;
  ++eq->cons_index;
  aeqe_found = 1;

  if (eq->cons_index > (2 * eq->entries - 1))
   eq->cons_index = 0;

  hns_roce_v2_init_irq_work(hr_dev, eq, qpn, cqn);

  aeqe = next_aeqe_sw_v2(eq);
 }

 set_eq_cons_index_v2(eq);
 return aeqe_found;
}
