
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_vdi {int lock; } ;


 int VDI_C ;
 int VDI_FSIZE ;
 int ipu_vdi_write (struct ipu_vdi*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_vdi_unsetup(struct ipu_vdi *vdi)
{
 unsigned long flags;

 spin_lock_irqsave(&vdi->lock, flags);
 ipu_vdi_write(vdi, 0, VDI_FSIZE);
 ipu_vdi_write(vdi, 0, VDI_C);
 spin_unlock_irqrestore(&vdi->lock, flags);
}
