
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_edac {int dummy; } ;
struct mem_ctl_info {int ctl_name; struct ti_edac* pvt_info; } ;
typedef int irqreturn_t ;


 int EMIF_1B_ECC_ERR ;
 int EMIF_1B_ECC_ERR_ADDR_LOG ;
 int EMIF_1B_ECC_ERR_CNT ;
 int EMIF_2B_ECC_ERR ;
 int EMIF_2B_ECC_ERR_ADDR_LOG ;
 int EMIF_IRQ_STATUS ;
 int EMIF_WR_ECC_ERR ;
 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 int IRQ_HANDLED ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int,int,int,int ,int ,int ,int ,char*) ;
 int ti_edac_readl (struct ti_edac*,int ) ;
 int ti_edac_writel (struct ti_edac*,int,int ) ;

__attribute__((used)) static irqreturn_t ti_edac_isr(int irq, void *data)
{
 struct mem_ctl_info *mci = data;
 struct ti_edac *edac = mci->pvt_info;
 u32 irq_status;
 u32 err_addr;
 int err_count;

 irq_status = ti_edac_readl(edac, EMIF_IRQ_STATUS);

 if (irq_status & EMIF_1B_ECC_ERR) {
  err_addr = ti_edac_readl(edac, EMIF_1B_ECC_ERR_ADDR_LOG);
  err_count = ti_edac_readl(edac, EMIF_1B_ECC_ERR_CNT);
  ti_edac_writel(edac, err_count, EMIF_1B_ECC_ERR_CNT);
  edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, err_count,
         err_addr >> PAGE_SHIFT,
         err_addr & ~PAGE_MASK, -1, 0, 0, 0,
         mci->ctl_name, "1B");
 }

 if (irq_status & EMIF_2B_ECC_ERR) {
  err_addr = ti_edac_readl(edac, EMIF_2B_ECC_ERR_ADDR_LOG);
  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
         err_addr >> PAGE_SHIFT,
         err_addr & ~PAGE_MASK, -1, 0, 0, 0,
         mci->ctl_name, "2B");
 }

 if (irq_status & EMIF_WR_ECC_ERR)
  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
         0, 0, -1, 0, 0, 0,
         mci->ctl_name, "WR");

 ti_edac_writel(edac, irq_status, EMIF_IRQ_STATUS);

 return IRQ_HANDLED;
}
