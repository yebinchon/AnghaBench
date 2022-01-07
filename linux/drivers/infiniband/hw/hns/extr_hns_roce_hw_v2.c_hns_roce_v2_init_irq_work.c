
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct hns_roce_work {int work; int sub_type; int event_type; void* cqn; void* qpn; struct hns_roce_dev* hr_dev; } ;
struct hns_roce_eq {int sub_type; int event_type; } ;
struct hns_roce_dev {int irq_workq; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int hns_roce_irq_work_handle ;
 struct hns_roce_work* kzalloc (int,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void hns_roce_v2_init_irq_work(struct hns_roce_dev *hr_dev,
          struct hns_roce_eq *eq,
          u32 qpn, u32 cqn)
{
 struct hns_roce_work *irq_work;

 irq_work = kzalloc(sizeof(struct hns_roce_work), GFP_ATOMIC);
 if (!irq_work)
  return;

 INIT_WORK(&(irq_work->work), hns_roce_irq_work_handle);
 irq_work->hr_dev = hr_dev;
 irq_work->qpn = qpn;
 irq_work->cqn = cqn;
 irq_work->event_type = eq->event_type;
 irq_work->sub_type = eq->sub_type;
 queue_work(hr_dev->irq_workq, &(irq_work->work));
}
