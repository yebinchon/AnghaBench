
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40iw_cm_core {int apbvt_lock; int ports_in_use; } ;
struct i40iw_device {struct i40iw_cm_core cm_core; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int __clear_bit (int ,int ) ;
 int __test_and_set_bit (int ,int ) ;
 int i40iw_cqp_manage_abvpt_cmd (struct i40iw_device*,int ,int) ;
 int i40iw_port_in_use (struct i40iw_cm_core*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

enum i40iw_status_code i40iw_manage_apbvt(struct i40iw_device *iwdev,
       u16 accel_local_port,
       bool add_port)
{
 struct i40iw_cm_core *cm_core = &iwdev->cm_core;
 enum i40iw_status_code status;
 unsigned long flags;
 bool in_use;





 if (add_port) {
  spin_lock_irqsave(&cm_core->apbvt_lock, flags);
  in_use = __test_and_set_bit(accel_local_port,
         cm_core->ports_in_use);
  spin_unlock_irqrestore(&cm_core->apbvt_lock, flags);
  if (in_use)
   return 0;
  return i40iw_cqp_manage_abvpt_cmd(iwdev, accel_local_port,
        1);
 } else {
  spin_lock_irqsave(&cm_core->apbvt_lock, flags);
  in_use = i40iw_port_in_use(cm_core, accel_local_port);
  if (in_use) {
   spin_unlock_irqrestore(&cm_core->apbvt_lock, flags);
   return 0;
  }
  __clear_bit(accel_local_port, cm_core->ports_in_use);
  status = i40iw_cqp_manage_abvpt_cmd(iwdev, accel_local_port,
          0);
  spin_unlock_irqrestore(&cm_core->apbvt_lock, flags);
  return status;
 }
}
