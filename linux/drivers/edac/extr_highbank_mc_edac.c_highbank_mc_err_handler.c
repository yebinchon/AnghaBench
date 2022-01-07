
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {int ctl_name; struct hb_mc_drvdata* pvt_info; } ;
struct hb_mc_drvdata {scalar_t__ mc_int_base; scalar_t__ mc_err_base; } ;
typedef int irqreturn_t ;


 scalar_t__ HB_DDR_ECC_C_ERR_ADDR ;
 scalar_t__ HB_DDR_ECC_C_ERR_STAT ;
 scalar_t__ HB_DDR_ECC_INT_ACK ;
 scalar_t__ HB_DDR_ECC_INT_STATUS ;
 int HB_DDR_ECC_INT_STAT_CE ;
 int HB_DDR_ECC_INT_STAT_UE ;
 scalar_t__ HB_DDR_ECC_U_ERR_ADDR ;
 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 int IRQ_HANDLED ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int,int,int,int ,int ,int,int ,char*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t highbank_mc_err_handler(int irq, void *dev_id)
{
 struct mem_ctl_info *mci = dev_id;
 struct hb_mc_drvdata *drvdata = mci->pvt_info;
 u32 status, err_addr;


 status = readl(drvdata->mc_int_base + HB_DDR_ECC_INT_STATUS);

 if (status & HB_DDR_ECC_INT_STAT_UE) {
  err_addr = readl(drvdata->mc_err_base + HB_DDR_ECC_U_ERR_ADDR);
  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
         err_addr >> PAGE_SHIFT,
         err_addr & ~PAGE_MASK, 0,
         0, 0, -1,
         mci->ctl_name, "");
 }
 if (status & HB_DDR_ECC_INT_STAT_CE) {
  u32 syndrome = readl(drvdata->mc_err_base + HB_DDR_ECC_C_ERR_STAT);
  syndrome = (syndrome >> 8) & 0xff;
  err_addr = readl(drvdata->mc_err_base + HB_DDR_ECC_C_ERR_ADDR);
  edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1,
         err_addr >> PAGE_SHIFT,
         err_addr & ~PAGE_MASK, syndrome,
         0, 0, -1,
         mci->ctl_name, "");
 }


 writel(status, drvdata->mc_int_base + HB_DDR_ECC_INT_ACK);
 return IRQ_HANDLED;
}
