
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int err_tx; } ;
struct isac_hw {int type; TYPE_1__ dch; int name; } ;
typedef int irqreturn_t ;


 int IPAC_TYPE_ISACX ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISACX_CMDRD ;
 int ISACX_CMDRD_RMC ;
 int ISACX_D_RFO ;
 int ISACX_D_RME ;
 int ISACX_D_RPF ;
 int ISACX_D_XDU ;
 int ISACX_D_XMR ;
 int ISACX_D_XPR ;
 int ISACX_ISTAD ;
 int ISACX__CIC ;
 int ISACX__ICD ;
 int ISAC_EXIR ;
 int ReadISAC (struct isac_hw*,int ) ;
 int WriteISAC (struct isac_hw*,int ,int ) ;
 int isac_cisq_irq (struct isac_hw*) ;
 int isac_empty_fifo (struct isac_hw*,int) ;
 int isac_mos_irq (struct isac_hw*) ;
 int isac_retransmit (struct isac_hw*) ;
 int isac_rme_irq (struct isac_hw*) ;
 int isac_xpr_irq (struct isac_hw*) ;
 int isacsx_cic_irq (struct isac_hw*) ;
 int isacsx_rme_irq (struct isac_hw*) ;
 int pr_debug (char*,int ,...) ;
 scalar_t__ unlikely (int) ;

irqreturn_t
mISDNisac_irq(struct isac_hw *isac, u8 val)
{
 if (unlikely(!val))
  return IRQ_NONE;
 pr_debug("%s: ISAC interrupt %02x\n", isac->name, val);
 if (isac->type & IPAC_TYPE_ISACX) {
  if (val & ISACX__CIC)
   isacsx_cic_irq(isac);
  if (val & ISACX__ICD) {
   val = ReadISAC(isac, ISACX_ISTAD);
   pr_debug("%s: ISTAD %02x\n", isac->name, val);
   if (val & ISACX_D_XDU) {
    pr_debug("%s: ISAC XDU\n", isac->name);



    isac_retransmit(isac);
   }
   if (val & ISACX_D_XMR) {
    pr_debug("%s: ISAC XMR\n", isac->name);



    isac_retransmit(isac);
   }
   if (val & ISACX_D_XPR)
    isac_xpr_irq(isac);
   if (val & ISACX_D_RFO) {
    pr_debug("%s: ISAC RFO\n", isac->name);
    WriteISAC(isac, ISACX_CMDRD, ISACX_CMDRD_RMC);
   }
   if (val & ISACX_D_RME)
    isacsx_rme_irq(isac);
   if (val & ISACX_D_RPF)
    isac_empty_fifo(isac, 0x20);
  }
 } else {
  if (val & 0x80)
   isac_rme_irq(isac);
  if (val & 0x40)
   isac_empty_fifo(isac, 32);
  if (val & 0x10)
   isac_xpr_irq(isac);
  if (val & 0x04)
   isac_cisq_irq(isac);
  if (val & 0x20)
   pr_debug("%s: ISAC RSC interrupt\n", isac->name);
  if (val & 0x02)
   pr_debug("%s: ISAC SIN interrupt\n", isac->name);
  if (val & 0x01) {
   val = ReadISAC(isac, ISAC_EXIR);
   pr_debug("%s: ISAC EXIR %02x\n", isac->name, val);
   if (val & 0x80)
    pr_debug("%s: ISAC XMR\n", isac->name);
   if (val & 0x40) {
    pr_debug("%s: ISAC XDU\n", isac->name);



    isac_retransmit(isac);
   }
   if (val & 0x04)
    isac_mos_irq(isac);
  }
 }
 return IRQ_HANDLED;
}
