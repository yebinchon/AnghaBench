
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_dsi_host {int intr_lock; } ;


 int DBG (char*,int ,int) ;
 int REG_DSI_INTR_CTRL ;
 int dsi_read (struct msm_dsi_host*,int ) ;
 int dsi_write (struct msm_dsi_host*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dsi_intr_ctrl(struct msm_dsi_host *msm_host, u32 mask, int enable)
{
 u32 intr;
 unsigned long flags;

 spin_lock_irqsave(&msm_host->intr_lock, flags);
 intr = dsi_read(msm_host, REG_DSI_INTR_CTRL);

 if (enable)
  intr |= mask;
 else
  intr &= ~mask;

 DBG("intr=%x enable=%d", intr, enable);

 dsi_write(msm_host, REG_DSI_INTR_CTRL, intr);
 spin_unlock_irqrestore(&msm_host->intr_lock, flags);
}
