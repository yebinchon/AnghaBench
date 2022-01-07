
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_vdi {int lock; int use_count; int module; int ipu; } ;


 int ipu_module_enable (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipu_vdi_enable(struct ipu_vdi *vdi)
{
 unsigned long flags;

 spin_lock_irqsave(&vdi->lock, flags);

 if (!vdi->use_count)
  ipu_module_enable(vdi->ipu, vdi->module);

 vdi->use_count++;

 spin_unlock_irqrestore(&vdi->lock, flags);

 return 0;
}
