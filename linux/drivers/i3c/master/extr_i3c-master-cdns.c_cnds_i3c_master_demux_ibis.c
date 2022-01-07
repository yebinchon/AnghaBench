
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int wq; } ;
struct cdns_i3c_master {int hj_work; TYPE_1__ base; scalar_t__ regs; } ;


 scalar_t__ IBIR ;
 int IBIR_ERROR ;
 int IBIR_TYPE (int) ;



 int IBIR_XFER_BYTES (int) ;
 scalar_t__ MST_ICR ;
 int MST_INT_IBIR_THR ;
 scalar_t__ MST_STATUS0 ;
 int MST_STATUS0_IBIR_EMP ;
 int WARN_ON (int) ;
 int cdns_i3c_master_handle_ibi (struct cdns_i3c_master*,int) ;
 int queue_work (int ,int *) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void cnds_i3c_master_demux_ibis(struct cdns_i3c_master *master)
{
 u32 status0;

 writel(MST_INT_IBIR_THR, master->regs + MST_ICR);

 for (status0 = readl(master->regs + MST_STATUS0);
      !(status0 & MST_STATUS0_IBIR_EMP);
      status0 = readl(master->regs + MST_STATUS0)) {
  u32 ibir = readl(master->regs + IBIR);

  switch (IBIR_TYPE(ibir)) {
  case 129:
   cdns_i3c_master_handle_ibi(master, ibir);
   break;

  case 130:
   WARN_ON(IBIR_XFER_BYTES(ibir) || (ibir & IBIR_ERROR));
   queue_work(master->base.wq, &master->hj_work);
   break;

  case 128:
   WARN_ON(IBIR_XFER_BYTES(ibir) || (ibir & IBIR_ERROR));
  default:
   break;
  }
 }
}
