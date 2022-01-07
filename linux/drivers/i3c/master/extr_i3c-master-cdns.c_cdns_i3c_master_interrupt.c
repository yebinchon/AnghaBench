
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int lock; } ;
struct cdns_i3c_master {TYPE_1__ xferqueue; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MST_IMR ;
 int MST_INT_IBIR_THR ;
 scalar_t__ MST_ISR ;
 int cdns_i3c_master_end_xfer_locked (struct cdns_i3c_master*,int) ;
 int cnds_i3c_master_demux_ibis (struct cdns_i3c_master*) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t cdns_i3c_master_interrupt(int irq, void *data)
{
 struct cdns_i3c_master *master = data;
 u32 status;

 status = readl(master->regs + MST_ISR);
 if (!(status & readl(master->regs + MST_IMR)))
  return IRQ_NONE;

 spin_lock(&master->xferqueue.lock);
 cdns_i3c_master_end_xfer_locked(master, status);
 spin_unlock(&master->xferqueue.lock);

 if (status & MST_INT_IBIR_THR)
  cnds_i3c_master_demux_ibis(master);

 return IRQ_HANDLED;
}
