
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef int u32 ;
struct ipu_vdi {int lock; } ;
 int V4L2_STD_525_60 ;
 int VDI_C ;
 int VDI_C_TOP_FIELD_AUTO_1 ;
 int VDI_C_TOP_FIELD_MAN_1 ;
 int ipu_vdi_read (struct ipu_vdi*,int ) ;
 int ipu_vdi_write (struct ipu_vdi*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_vdi_set_field_order(struct ipu_vdi *vdi, v4l2_std_id std, u32 field)
{
 bool top_field_0 = 0;
 unsigned long flags;
 u32 reg;

 switch (field) {
 case 131:
 case 129:
 case 128:
  top_field_0 = 1;
  break;
 case 132:
 case 130:
 case 133:
  top_field_0 = 0;
  break;
 default:
  top_field_0 = (std & V4L2_STD_525_60) ? 1 : 0;
  break;
 }

 spin_lock_irqsave(&vdi->lock, flags);

 reg = ipu_vdi_read(vdi, VDI_C);
 if (top_field_0)
  reg &= ~(VDI_C_TOP_FIELD_MAN_1 | VDI_C_TOP_FIELD_AUTO_1);
 else
  reg |= VDI_C_TOP_FIELD_MAN_1 | VDI_C_TOP_FIELD_AUTO_1;
 ipu_vdi_write(vdi, reg, VDI_C);

 spin_unlock_irqrestore(&vdi->lock, flags);
}
