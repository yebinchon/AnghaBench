
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_cmd {scalar_t__ data_len; scalar_t__ reply_len; int status; int link; } ;
struct TYPE_2__ {int db_irq; int lock; int * cmd_cur; int cmd_list; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ SMU_MAX_DATA ;
 int list_add_tail (int *,int *) ;
 TYPE_1__* smu ;
 int smu_irq_inited ;
 int smu_spinwait_cmd (struct smu_cmd*) ;
 int smu_start_cmd () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int smu_queue_cmd(struct smu_cmd *cmd)
{
 unsigned long flags;

 if (smu == ((void*)0))
  return -ENODEV;
 if (cmd->data_len > SMU_MAX_DATA ||
     cmd->reply_len > SMU_MAX_DATA)
  return -EINVAL;

 cmd->status = 1;
 spin_lock_irqsave(&smu->lock, flags);
 list_add_tail(&cmd->link, &smu->cmd_list);
 if (smu->cmd_cur == ((void*)0))
  smu_start_cmd();
 spin_unlock_irqrestore(&smu->lock, flags);


 if (!smu_irq_inited || !smu->db_irq)
  smu_spinwait_cmd(cmd);

 return 0;
}
