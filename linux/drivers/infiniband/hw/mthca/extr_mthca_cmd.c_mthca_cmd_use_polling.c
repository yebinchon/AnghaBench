
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_cmds; int poll_sem; int context; int event_sem; int flags; } ;
struct mthca_dev {TYPE_1__ cmd; } ;


 int MTHCA_CMD_USE_EVENTS ;
 int down (int *) ;
 int kfree (int ) ;
 int up (int *) ;

void mthca_cmd_use_polling(struct mthca_dev *dev)
{
 int i;

 dev->cmd.flags &= ~MTHCA_CMD_USE_EVENTS;

 for (i = 0; i < dev->cmd.max_cmds; ++i)
  down(&dev->cmd.event_sem);

 kfree(dev->cmd.context);

 up(&dev->cmd.poll_sem);
}
