
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccp_device {unsigned int cmd_q_count; scalar_t__ cmd_count; TYPE_1__* cmd_q; int cmd_lock; int suspending; int cmd; int backlog; } ;
struct ccp_cmd {int flags; int entry; struct ccp_device* ccp; int callback; } ;
struct TYPE_2__ {int kthread; scalar_t__ active; } ;


 int CCP_CMD_MAY_BACKLOG ;
 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENODEV ;
 int ENOSPC ;
 scalar_t__ MAX_CMD_QLEN ;
 struct ccp_device* ccp_get_device () ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (int ) ;

int ccp_enqueue_cmd(struct ccp_cmd *cmd)
{
 struct ccp_device *ccp;
 unsigned long flags;
 unsigned int i;
 int ret;


 ccp = cmd->ccp ? cmd->ccp : ccp_get_device();

 if (!ccp)
  return -ENODEV;


 if (!cmd->callback)
  return -EINVAL;

 cmd->ccp = ccp;

 spin_lock_irqsave(&ccp->cmd_lock, flags);

 i = ccp->cmd_q_count;

 if (ccp->cmd_count >= MAX_CMD_QLEN) {
  if (cmd->flags & CCP_CMD_MAY_BACKLOG) {
   ret = -EBUSY;
   list_add_tail(&cmd->entry, &ccp->backlog);
  } else {
   ret = -ENOSPC;
  }
 } else {
  ret = -EINPROGRESS;
  ccp->cmd_count++;
  list_add_tail(&cmd->entry, &ccp->cmd);


  if (!ccp->suspending) {
   for (i = 0; i < ccp->cmd_q_count; i++) {
    if (ccp->cmd_q[i].active)
     continue;

    break;
   }
  }
 }

 spin_unlock_irqrestore(&ccp->cmd_lock, flags);


 if (i < ccp->cmd_q_count)
  wake_up_process(ccp->cmd_q[i].kthread);

 return ret;
}
