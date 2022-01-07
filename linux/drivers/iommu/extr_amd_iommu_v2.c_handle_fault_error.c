
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fault {int tag; int state; int flags; int address; int pasid; TYPE_1__* dev_state; } ;
struct TYPE_2__ {int (* inv_ppr_cb ) (int ,int ,int ,int ) ;int pdev; } ;





 int BUG () ;
 int PPR_FAILURE ;
 int PPR_INVALID ;
 int PPR_SUCCESS ;
 int set_pri_tag_status (int ,int ,int ) ;
 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static void handle_fault_error(struct fault *fault)
{
 int status;

 if (!fault->dev_state->inv_ppr_cb) {
  set_pri_tag_status(fault->state, fault->tag, PPR_INVALID);
  return;
 }

 status = fault->dev_state->inv_ppr_cb(fault->dev_state->pdev,
           fault->pasid,
           fault->address,
           fault->flags);
 switch (status) {
 case 128:
  set_pri_tag_status(fault->state, fault->tag, PPR_SUCCESS);
  break;
 case 129:
  set_pri_tag_status(fault->state, fault->tag, PPR_INVALID);
  break;
 case 130:
  set_pri_tag_status(fault->state, fault->tag, PPR_FAILURE);
  break;
 default:
  BUG();
 }
}
