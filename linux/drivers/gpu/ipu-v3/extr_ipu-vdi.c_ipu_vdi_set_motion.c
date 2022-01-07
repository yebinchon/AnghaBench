
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_vdi {int lock; } ;
typedef enum ipu_motion_sel { ____Placeholder_ipu_motion_sel } ipu_motion_sel ;




 int VDI_C ;
 int VDI_C_MOT_SEL_FULL ;
 int VDI_C_MOT_SEL_LOW ;
 int VDI_C_MOT_SEL_MASK ;
 int VDI_C_MOT_SEL_MED ;
 int ipu_vdi_read (struct ipu_vdi*,int ) ;
 int ipu_vdi_write (struct ipu_vdi*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_vdi_set_motion(struct ipu_vdi *vdi, enum ipu_motion_sel motion_sel)
{
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&vdi->lock, flags);

 reg = ipu_vdi_read(vdi, VDI_C);

 reg &= ~VDI_C_MOT_SEL_MASK;

 switch (motion_sel) {
 case 128:
  reg |= VDI_C_MOT_SEL_MED;
  break;
 case 129:
  reg |= VDI_C_MOT_SEL_FULL;
  break;
 default:
  reg |= VDI_C_MOT_SEL_LOW;
  break;
 }

 ipu_vdi_write(vdi, reg, VDI_C);

 spin_unlock_irqrestore(&vdi->lock, flags);
}
