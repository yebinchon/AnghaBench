
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l1; } ;
struct w6692_hw {int name; TYPE_1__ dch; } ;
struct mISDN_ctrl_req {int op; int p1; } ;


 int EINVAL ;
 int HW_TIMER3_VALUE ;


 int l1_event (int ,int) ;
 int pr_info (char*,int ,int) ;

__attribute__((used)) static int
channel_ctrl(struct w6692_hw *card, struct mISDN_ctrl_req *cq)
{
 int ret = 0;

 switch (cq->op) {
 case 129:
  cq->op = 128;
  break;
 case 128:
  ret = l1_event(card->dch.l1, HW_TIMER3_VALUE | (cq->p1 & 0xff));
  break;
 default:
  pr_info("%s: unknown CTRL OP %x\n", card->name, cq->op);
  ret = -EINVAL;
  break;
 }
 return ret;
}
