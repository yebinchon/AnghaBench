
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hb_l2_drvdata {int sb_irq; int db_irq; scalar_t__ base; } ;
struct edac_device_ctl_info {int ctl_name; struct hb_l2_drvdata* pvt_info; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ SR_CLR_DB_ECC_INTR ;
 scalar_t__ SR_CLR_SB_ECC_INTR ;
 int edac_device_handle_ce (struct edac_device_ctl_info*,int ,int ,int ) ;
 int edac_device_handle_ue (struct edac_device_ctl_info*,int ,int ,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t highbank_l2_err_handler(int irq, void *dev_id)
{
 struct edac_device_ctl_info *dci = dev_id;
 struct hb_l2_drvdata *drvdata = dci->pvt_info;

 if (irq == drvdata->sb_irq) {
  writel(1, drvdata->base + SR_CLR_SB_ECC_INTR);
  edac_device_handle_ce(dci, 0, 0, dci->ctl_name);
 }
 if (irq == drvdata->db_irq) {
  writel(1, drvdata->base + SR_CLR_DB_ECC_INTR);
  edac_device_handle_ue(dci, 0, 0, dci->ctl_name);
 }

 return IRQ_HANDLED;
}
