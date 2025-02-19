
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int timeout; } ;
struct TYPE_6__ {int state; int device; } ;
struct cm_id_private {TYPE_4__* timewait_info; TYPE_2__ av; TYPE_1__ id; } ;
struct cm_device {int going_down; } ;
struct TYPE_10__ {int lock; int wq; int timewait_list; } ;
struct TYPE_8__ {int work; } ;
struct TYPE_9__ {TYPE_3__ work; int list; } ;


 int IB_CM_TIMEWAIT ;
 TYPE_5__ cm ;
 int cm_cleanup_timewait (TYPE_4__*) ;
 int cm_client ;
 int cm_convert_to_ms (int ) ;
 struct cm_device* ib_get_client_data (int ,int *) ;
 int list_add_tail (int *,int *) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cm_enter_timewait(struct cm_id_private *cm_id_priv)
{
 int wait_time;
 unsigned long flags;
 struct cm_device *cm_dev;

 cm_dev = ib_get_client_data(cm_id_priv->id.device, &cm_client);
 if (!cm_dev)
  return;

 spin_lock_irqsave(&cm.lock, flags);
 cm_cleanup_timewait(cm_id_priv->timewait_info);
 list_add_tail(&cm_id_priv->timewait_info->list, &cm.timewait_list);
 spin_unlock_irqrestore(&cm.lock, flags);






 cm_id_priv->id.state = IB_CM_TIMEWAIT;
 wait_time = cm_convert_to_ms(cm_id_priv->av.timeout);


 spin_lock_irqsave(&cm.lock, flags);
 if (!cm_dev->going_down)
  queue_delayed_work(cm.wq, &cm_id_priv->timewait_info->work.work,
       msecs_to_jiffies(wait_time));
 spin_unlock_irqrestore(&cm.lock, flags);

 cm_id_priv->timewait_info = ((void*)0);
}
