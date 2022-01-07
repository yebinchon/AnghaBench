
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {struct ipu_ic_priv* ic_priv; } ;
struct ipu_ic_priv {int lock; struct ipu_ic* task; } ;
struct ipu_ic {int in_use; } ;
typedef enum ipu_ic_task { ____Placeholder_ipu_ic_task } ipu_ic_task ;


 int EBUSY ;
 int EINVAL ;
 struct ipu_ic* ERR_PTR (int ) ;
 int IC_NUM_TASKS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct ipu_ic *ipu_ic_get(struct ipu_soc *ipu, enum ipu_ic_task task)
{
 struct ipu_ic_priv *priv = ipu->ic_priv;
 unsigned long flags;
 struct ipu_ic *ic, *ret;

 if (task >= IC_NUM_TASKS)
  return ERR_PTR(-EINVAL);

 ic = &priv->task[task];

 spin_lock_irqsave(&priv->lock, flags);

 if (ic->in_use) {
  ret = ERR_PTR(-EBUSY);
  goto unlock;
 }

 ic->in_use = 1;
 ret = ic;

unlock:
 spin_unlock_irqrestore(&priv->lock, flags);
 return ret;
}
