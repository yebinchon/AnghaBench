
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cm_port {int cm_priv_altr_list; int cm_priv_prim_list; } ;
struct cm_av {int dummy; } ;
struct cm_id_private {int altr_list; struct cm_av alt_av; int prim_list; struct cm_av av; } ;
struct TYPE_2__ {int lock; } ;


 int EINVAL ;
 TYPE_1__ cm ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int add_cm_id_to_port_list(struct cm_id_private *cm_id_priv,
      struct cm_av *av,
      struct cm_port *port)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&cm.lock, flags);

 if (&cm_id_priv->av == av)
  list_add_tail(&cm_id_priv->prim_list, &port->cm_priv_prim_list);
 else if (&cm_id_priv->alt_av == av)
  list_add_tail(&cm_id_priv->altr_list, &port->cm_priv_altr_list);
 else
  ret = -EINVAL;

 spin_unlock_irqrestore(&cm.lock, flags);
 return ret;
}
