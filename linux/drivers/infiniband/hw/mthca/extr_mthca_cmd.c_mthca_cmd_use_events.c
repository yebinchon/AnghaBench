
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_cmds; int token_mask; int poll_sem; int flags; int context_lock; int event_sem; scalar_t__ free_head; TYPE_2__* context; } ;
struct mthca_dev {TYPE_1__ cmd; } ;
struct mthca_cmd_context {int dummy; } ;
struct TYPE_4__ {int token; int next; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MTHCA_CMD_USE_EVENTS ;
 int down (int *) ;
 TYPE_2__* kmalloc_array (int,int,int ) ;
 int sema_init (int *,int) ;
 int spin_lock_init (int *) ;

int mthca_cmd_use_events(struct mthca_dev *dev)
{
 int i;

 dev->cmd.context = kmalloc_array(dev->cmd.max_cmds,
      sizeof(struct mthca_cmd_context),
      GFP_KERNEL);
 if (!dev->cmd.context)
  return -ENOMEM;

 for (i = 0; i < dev->cmd.max_cmds; ++i) {
  dev->cmd.context[i].token = i;
  dev->cmd.context[i].next = i + 1;
 }

 dev->cmd.context[dev->cmd.max_cmds - 1].next = -1;
 dev->cmd.free_head = 0;

 sema_init(&dev->cmd.event_sem, dev->cmd.max_cmds);
 spin_lock_init(&dev->cmd.context_lock);

 for (dev->cmd.token_mask = 1;
      dev->cmd.token_mask < dev->cmd.max_cmds;
      dev->cmd.token_mask <<= 1)
  ;
 --dev->cmd.token_mask;

 dev->cmd.flags |= MTHCA_CMD_USE_EVENTS;

 down(&dev->cmd.poll_sem);

 return 0;
}
