
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_rect {int width; int height; int top; int left; } ;
struct ipu_csi {int lock; } ;


 int CSI_ACT_FRM_SIZE ;
 int CSI_HSC_MASK ;
 int CSI_HSC_SHIFT ;
 int CSI_OUT_FRM_CTRL ;
 int CSI_VSC_MASK ;
 int CSI_VSC_SHIFT ;
 int ipu_csi_read (struct ipu_csi*,int ) ;
 int ipu_csi_write (struct ipu_csi*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_csi_set_window(struct ipu_csi *csi, struct v4l2_rect *w)
{
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&csi->lock, flags);

 ipu_csi_write(csi, (w->width - 1) | ((w->height - 1) << 16),
     CSI_ACT_FRM_SIZE);

 reg = ipu_csi_read(csi, CSI_OUT_FRM_CTRL);
 reg &= ~(CSI_HSC_MASK | CSI_VSC_MASK);
 reg |= ((w->top << CSI_VSC_SHIFT) | (w->left << CSI_HSC_SHIFT));
 ipu_csi_write(csi, reg, CSI_OUT_FRM_CTRL);

 spin_unlock_irqrestore(&csi->lock, flags);
}
