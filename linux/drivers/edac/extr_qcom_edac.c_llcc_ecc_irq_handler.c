
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct llcc_drv_data {size_t num_banks; scalar_t__* offsets; int regmap; } ;
struct edac_device_ctl_info {struct llcc_drv_data* pvt_info; } ;
typedef int irqreturn_t ;


 size_t DB_ECC_ERROR ;
 scalar_t__ DRP_INTERRUPT_STATUS ;
 int EDAC_LLCC ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KERN_CRIT ;
 int LLCC_DRAM_CE ;
 int LLCC_DRAM_UE ;
 int LLCC_TRAM_CE ;
 int LLCC_TRAM_UE ;
 size_t SB_ECC_ERROR ;
 scalar_t__ TRP_INTERRUPT_0_STATUS ;
 int dump_syn_reg (void*,int ,size_t) ;
 int edac_printk (int ,int ,char*) ;
 int regmap_read (int ,scalar_t__,size_t*) ;

__attribute__((used)) static irqreturn_t
llcc_ecc_irq_handler(int irq, void *edev_ctl)
{
 struct edac_device_ctl_info *edac_dev_ctl = edev_ctl;
 struct llcc_drv_data *drv = edac_dev_ctl->pvt_info;
 irqreturn_t irq_rc = IRQ_NONE;
 u32 drp_error, trp_error, i;
 int ret;


 for (i = 0; i < drv->num_banks; i++) {
  ret = regmap_read(drv->regmap,
      drv->offsets[i] + DRP_INTERRUPT_STATUS,
      &drp_error);

  if (!ret && (drp_error & SB_ECC_ERROR)) {
   edac_printk(KERN_CRIT, EDAC_LLCC,
        "Single Bit Error detected in Data RAM\n");
   ret = dump_syn_reg(edev_ctl, LLCC_DRAM_CE, i);
  } else if (!ret && (drp_error & DB_ECC_ERROR)) {
   edac_printk(KERN_CRIT, EDAC_LLCC,
        "Double Bit Error detected in Data RAM\n");
   ret = dump_syn_reg(edev_ctl, LLCC_DRAM_UE, i);
  }
  if (!ret)
   irq_rc = IRQ_HANDLED;

  ret = regmap_read(drv->regmap,
      drv->offsets[i] + TRP_INTERRUPT_0_STATUS,
      &trp_error);

  if (!ret && (trp_error & SB_ECC_ERROR)) {
   edac_printk(KERN_CRIT, EDAC_LLCC,
        "Single Bit Error detected in Tag RAM\n");
   ret = dump_syn_reg(edev_ctl, LLCC_TRAM_CE, i);
  } else if (!ret && (trp_error & DB_ECC_ERROR)) {
   edac_printk(KERN_CRIT, EDAC_LLCC,
        "Double Bit Error detected in Tag RAM\n");
   ret = dump_syn_reg(edev_ctl, LLCC_TRAM_UE, i);
  }
  if (!ret)
   irq_rc = IRQ_HANDLED;
 }

 return irq_rc;
}
