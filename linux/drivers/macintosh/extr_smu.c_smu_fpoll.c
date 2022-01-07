
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct smu_private {scalar_t__ mode; int lock; TYPE_1__ cmd; scalar_t__ busy; int wait; } ;
struct file {struct smu_private* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ smu_file_commands ;
 scalar_t__ smu_file_events ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __poll_t smu_fpoll(struct file *file, poll_table *wait)
{
 struct smu_private *pp = file->private_data;
 __poll_t mask = 0;
 unsigned long flags;

 if (pp == 0)
  return 0;

 if (pp->mode == smu_file_commands) {
  poll_wait(file, &pp->wait, wait);

  spin_lock_irqsave(&pp->lock, flags);
  if (pp->busy && pp->cmd.status != 1)
   mask |= EPOLLIN;
  spin_unlock_irqrestore(&pp->lock, flags);
 }
 if (pp->mode == smu_file_events) {

 }
 return mask;
}
