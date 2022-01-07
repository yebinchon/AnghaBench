
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_csi {int lock; } ;


 int CSI_HORI_DOWNSIZE_EN ;
 int CSI_OUT_FRM_CTRL ;
 int CSI_VERT_DOWNSIZE_EN ;
 int ipu_csi_read (struct ipu_csi*,int ) ;
 int ipu_csi_write (struct ipu_csi*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_csi_set_downsize(struct ipu_csi *csi, bool horiz, bool vert)
{
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&csi->lock, flags);

 reg = ipu_csi_read(csi, CSI_OUT_FRM_CTRL);
 reg &= ~(CSI_HORI_DOWNSIZE_EN | CSI_VERT_DOWNSIZE_EN);
 reg |= (horiz ? CSI_HORI_DOWNSIZE_EN : 0) |
        (vert ? CSI_VERT_DOWNSIZE_EN : 0);
 ipu_csi_write(csi, reg, CSI_OUT_FRM_CTRL);

 spin_unlock_irqrestore(&csi->lock, flags);
}
