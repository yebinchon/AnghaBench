
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_dev {int cqp_lock; int cqp_cmd_head; int cqp; } ;
struct cqp_commands_info {int cqp_cmd_entry; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int i40iw_exec_cqp_cmd (struct i40iw_sc_dev*,struct cqp_commands_info*) ;
 int i40iw_ring_full (int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

enum i40iw_status_code i40iw_process_cqp_cmd(struct i40iw_sc_dev *dev,
          struct cqp_commands_info *pcmdinfo)
{
 enum i40iw_status_code status = 0;
 unsigned long flags;

 spin_lock_irqsave(&dev->cqp_lock, flags);
 if (list_empty(&dev->cqp_cmd_head) && !i40iw_ring_full(dev->cqp))
  status = i40iw_exec_cqp_cmd(dev, pcmdinfo);
 else
  list_add_tail(&pcmdinfo->cqp_cmd_entry, &dev->cqp_cmd_head);
 spin_unlock_irqrestore(&dev->cqp_lock, flags);
 return status;
}
