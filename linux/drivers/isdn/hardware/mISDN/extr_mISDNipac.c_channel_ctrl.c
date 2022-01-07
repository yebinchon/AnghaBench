
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mISDN_ctrl_req {int op; int channel; int p1; } ;
struct TYPE_2__ {int (* ctrl ) (TYPE_1__*,int ,int ) ;} ;
struct ipac_hw {int (* ctrl ) (struct ipac_hw*,int ,int) ;int name; TYPE_1__ isac; } ;


 int EINVAL ;
 int HW_TESTLOOP ;
 int HW_TIMER3_VALUE ;



 int pr_info (char*,int ,int) ;
 int stub1 (struct ipac_hw*,int ,int) ;
 int stub2 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
channel_ctrl(struct ipac_hw *ipac, struct mISDN_ctrl_req *cq)
{
 int ret = 0;

 switch (cq->op) {
 case 130:
  cq->op = 128 | 129;
  break;
 case 128:

  if (cq->channel < 0 || cq->channel > 3) {
   ret = -EINVAL;
   break;
  }
  ret = ipac->ctrl(ipac, HW_TESTLOOP, cq->channel);
  break;
 case 129:
  ret = ipac->isac.ctrl(&ipac->isac, HW_TIMER3_VALUE, cq->p1);
  break;
 default:
  pr_info("%s: unknown CTRL OP %x\n", ipac->name, cq->op);
  ret = -EINVAL;
  break;
 }
 return ret;
}
