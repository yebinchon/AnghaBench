
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_soc {int lock; } ;


 int IPU_CONF ;
 int IPU_CONF_CSI0_DATA_SOURCE ;
 int IPU_CONF_CSI1_DATA_SOURCE ;
 int ipu_cm_read (struct ipu_soc*,int ) ;
 int ipu_cm_write (struct ipu_soc*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_set_csi_src_mux(struct ipu_soc *ipu, int csi_id, bool mipi_csi2)
{
 unsigned long flags;
 u32 val, mask;

 mask = (csi_id == 1) ? IPU_CONF_CSI1_DATA_SOURCE :
  IPU_CONF_CSI0_DATA_SOURCE;

 spin_lock_irqsave(&ipu->lock, flags);

 val = ipu_cm_read(ipu, IPU_CONF);
 if (mipi_csi2)
  val |= mask;
 else
  val &= ~mask;
 ipu_cm_write(ipu, val, IPU_CONF);

 spin_unlock_irqrestore(&ipu->lock, flags);
}
