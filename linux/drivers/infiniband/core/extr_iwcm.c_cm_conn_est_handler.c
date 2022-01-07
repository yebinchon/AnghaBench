
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cm_handler ) (TYPE_1__*,struct iw_cm_event*) ;} ;
struct iwcm_id_private {scalar_t__ state; int connect_wait; TYPE_1__ id; int lock; int flags; } ;
struct iw_cm_event {int dummy; } ;


 int BUG_ON (int) ;
 int IWCM_F_CONNECT_WAIT ;
 scalar_t__ IW_CM_STATE_CONN_RECV ;
 scalar_t__ IW_CM_STATE_ESTABLISHED ;
 int clear_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,struct iw_cm_event*) ;
 int wake_up_all (int *) ;

__attribute__((used)) static int cm_conn_est_handler(struct iwcm_id_private *cm_id_priv,
          struct iw_cm_event *iw_event)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&cm_id_priv->lock, flags);






 clear_bit(IWCM_F_CONNECT_WAIT, &cm_id_priv->flags);
 BUG_ON(cm_id_priv->state != IW_CM_STATE_CONN_RECV);
 cm_id_priv->state = IW_CM_STATE_ESTABLISHED;
 spin_unlock_irqrestore(&cm_id_priv->lock, flags);
 ret = cm_id_priv->id.cm_handler(&cm_id_priv->id, iw_event);
 wake_up_all(&cm_id_priv->connect_wait);

 return ret;
}
