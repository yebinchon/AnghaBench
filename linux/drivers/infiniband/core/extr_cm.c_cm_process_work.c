
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cm_work {int cm_event; } ;
struct TYPE_4__ {int (* cm_handler ) (TYPE_1__*,int *) ;} ;
struct cm_id_private {TYPE_1__ id; int lock; int work_count; } ;


 int atomic_add_negative (int,int *) ;
 struct cm_work* cm_dequeue_work (struct cm_id_private*) ;
 int cm_deref_id (struct cm_id_private*) ;
 int cm_destroy_id (TYPE_1__*,int) ;
 int cm_free_work (struct cm_work*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (TYPE_1__*,int *) ;
 int stub2 (TYPE_1__*,int *) ;

__attribute__((used)) static void cm_process_work(struct cm_id_private *cm_id_priv,
       struct cm_work *work)
{
 int ret;


 ret = cm_id_priv->id.cm_handler(&cm_id_priv->id, &work->cm_event);
 cm_free_work(work);

 while (!ret && !atomic_add_negative(-1, &cm_id_priv->work_count)) {
  spin_lock_irq(&cm_id_priv->lock);
  work = cm_dequeue_work(cm_id_priv);
  spin_unlock_irq(&cm_id_priv->lock);
  if (!work)
   return;

  ret = cm_id_priv->id.cm_handler(&cm_id_priv->id,
      &work->cm_event);
  cm_free_work(work);
 }
 cm_deref_id(cm_id_priv);
 if (ret)
  cm_destroy_id(&cm_id_priv->id, ret);
}
