
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {struct ipu_csi** csi_priv; } ;
struct ipu_csi {int inuse; int lock; } ;


 int EBUSY ;
 int EINVAL ;
 struct ipu_csi* ERR_PTR (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct ipu_csi *ipu_csi_get(struct ipu_soc *ipu, int id)
{
 unsigned long flags;
 struct ipu_csi *csi, *ret;

 if (id > 1)
  return ERR_PTR(-EINVAL);

 csi = ipu->csi_priv[id];
 ret = csi;

 spin_lock_irqsave(&csi->lock, flags);

 if (csi->inuse) {
  ret = ERR_PTR(-EBUSY);
  goto unlock;
 }

 csi->inuse = 1;
unlock:
 spin_unlock_irqrestore(&csi->lock, flags);
 return ret;
}
