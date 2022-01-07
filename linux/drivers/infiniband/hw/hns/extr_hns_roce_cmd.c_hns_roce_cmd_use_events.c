
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_cmdq {int max_cmds; int use_events; int token_mask; int context_lock; int event_sem; scalar_t__ free_head; TYPE_1__* context; } ;
struct hns_roce_dev {struct hns_roce_cmdq cmd; } ;
struct TYPE_2__ {int token; int next; } ;


 int CMD_TOKEN_MASK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kmalloc_array (int,int,int ) ;
 int sema_init (int *,int) ;
 int spin_lock_init (int *) ;

int hns_roce_cmd_use_events(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_cmdq *hr_cmd = &hr_dev->cmd;
 int i;

 hr_cmd->context = kmalloc_array(hr_cmd->max_cmds,
     sizeof(*hr_cmd->context),
     GFP_KERNEL);
 if (!hr_cmd->context)
  return -ENOMEM;

 for (i = 0; i < hr_cmd->max_cmds; ++i) {
  hr_cmd->context[i].token = i;
  hr_cmd->context[i].next = i + 1;
 }

 hr_cmd->context[hr_cmd->max_cmds - 1].next = -1;
 hr_cmd->free_head = 0;

 sema_init(&hr_cmd->event_sem, hr_cmd->max_cmds);
 spin_lock_init(&hr_cmd->context_lock);

 hr_cmd->token_mask = CMD_TOKEN_MASK;
 hr_cmd->use_events = 1;

 return 0;
}
