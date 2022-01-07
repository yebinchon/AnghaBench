
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_rect {int width; int height; int left; int top; } ;
struct ipu_csi {int lock; } ;


 int CSI_ACT_FRM_SIZE ;
 int CSI_HSC_MASK ;
 int CSI_HSC_SHIFT ;
 int CSI_OUT_FRM_CTRL ;
 int CSI_VSC_MASK ;
 int CSI_VSC_SHIFT ;
 int ipu_csi_read (struct ipu_csi*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_csi_get_window(struct ipu_csi *csi, struct v4l2_rect *w)
{
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&csi->lock, flags);

 reg = ipu_csi_read(csi, CSI_ACT_FRM_SIZE);
 w->width = (reg & 0xFFFF) + 1;
 w->height = (reg >> 16 & 0xFFFF) + 1;

 reg = ipu_csi_read(csi, CSI_OUT_FRM_CTRL);
 w->left = (reg & CSI_HSC_MASK) >> CSI_HSC_SHIFT;
 w->top = (reg & CSI_VSC_MASK) >> CSI_VSC_SHIFT;

 spin_unlock_irqrestore(&csi->lock, flags);
}
