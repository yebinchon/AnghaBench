
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int port_num; } ;
struct ib_event {TYPE_2__ element; int * device; int event; } ;
struct hns_roce_dev {int is_reset; int active; int dis_db; int ib_dev; } ;
struct TYPE_3__ {scalar_t__ instance_state; int state; int reset_state; } ;
struct hnae3_handle {scalar_t__ priv; TYPE_1__ rinfo; } ;


 int HNS_ROCE_RST_DIRECT_RETURN ;
 scalar_t__ HNS_ROCE_STATE_INITED ;
 int HNS_ROCE_STATE_RST_DOWN ;
 int IB_EVENT_DEVICE_FATAL ;
 int clear_bit (int ,int *) ;
 int ib_dispatch_event (struct ib_event*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int hns_roce_hw_v2_reset_notify_down(struct hnae3_handle *handle)
{
 struct hns_roce_dev *hr_dev;
 struct ib_event event;

 if (handle->rinfo.instance_state != HNS_ROCE_STATE_INITED) {
  set_bit(HNS_ROCE_RST_DIRECT_RETURN, &handle->rinfo.state);
  return 0;
 }

 handle->rinfo.reset_state = HNS_ROCE_STATE_RST_DOWN;
 clear_bit(HNS_ROCE_RST_DIRECT_RETURN, &handle->rinfo.state);

 hr_dev = (struct hns_roce_dev *)handle->priv;
 if (!hr_dev)
  return 0;

 hr_dev->is_reset = 1;
 hr_dev->active = 0;
 hr_dev->dis_db = 1;

 event.event = IB_EVENT_DEVICE_FATAL;
 event.device = &hr_dev->ib_dev;
 event.element.port_num = 1;
 ib_dispatch_event(&event);

 return 0;
}
