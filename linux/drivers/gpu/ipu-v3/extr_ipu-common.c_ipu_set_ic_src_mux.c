
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_soc {int lock; } ;


 int IPU_CONF ;
 int IPU_CONF_CSI_SEL ;
 int IPU_CONF_IC_INPUT ;
 int ipu_cm_read (struct ipu_soc*,int ) ;
 int ipu_cm_write (struct ipu_soc*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_set_ic_src_mux(struct ipu_soc *ipu, int csi_id, bool vdi)
{
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&ipu->lock, flags);

 val = ipu_cm_read(ipu, IPU_CONF);
 if (vdi)
  val |= IPU_CONF_IC_INPUT;
 else
  val &= ~IPU_CONF_IC_INPUT;

 if (csi_id == 1)
  val |= IPU_CONF_CSI_SEL;
 else
  val &= ~IPU_CONF_CSI_SEL;

 ipu_cm_write(ipu, val, IPU_CONF);

 spin_unlock_irqrestore(&ipu->lock, flags);
}
