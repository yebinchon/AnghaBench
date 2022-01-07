
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_soc {int lock; } ;


 int IPU_CONF ;
 int IPU_CONF_DI0_EN ;
 int IPU_CONF_DI1_EN ;
 int IPU_DI0_COUNTER_RELEASE ;
 int IPU_DI1_COUNTER_RELEASE ;
 int IPU_DISP_GEN ;
 int ipu_cm_read (struct ipu_soc*,int ) ;
 int ipu_cm_write (struct ipu_soc*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipu_module_enable(struct ipu_soc *ipu, u32 mask)
{
 unsigned long lock_flags;
 u32 val;

 spin_lock_irqsave(&ipu->lock, lock_flags);

 val = ipu_cm_read(ipu, IPU_DISP_GEN);

 if (mask & IPU_CONF_DI0_EN)
  val |= IPU_DI0_COUNTER_RELEASE;
 if (mask & IPU_CONF_DI1_EN)
  val |= IPU_DI1_COUNTER_RELEASE;

 ipu_cm_write(ipu, val, IPU_DISP_GEN);

 val = ipu_cm_read(ipu, IPU_CONF);
 val |= mask;
 ipu_cm_write(ipu, val, IPU_CONF);

 spin_unlock_irqrestore(&ipu->lock, lock_flags);

 return 0;
}
