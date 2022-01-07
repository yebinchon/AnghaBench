
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct isac_hw {int dummy; } ;
struct ipac_hw {int type; int name; TYPE_1__* hscx; struct isac_hw isac; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ off; } ;


 int IPACX__ICA ;
 int IPACX__ICB ;
 int IPAC_D_TIN2 ;
 scalar_t__ IPAC_ISTA ;
 scalar_t__ IPAC_ISTAB ;
 int IPAC_TYPE_HSCX ;
 int IPAC_TYPE_IPAC ;
 int IPAC_TYPE_IPACX ;
 int IPAC__EXA ;
 int IPAC__EXB ;
 int IPAC__EXD ;
 int IPAC__ICA ;
 int IPAC__ICB ;
 int IPAC__ICD ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ ISACX_ISTA ;
 int ISACX__CIC ;
 int ISACX__ICD ;
 int ISAC_ISTA ;
 int ReadIPAC (struct ipac_hw*,scalar_t__) ;
 int ReadISAC (struct isac_hw*,int ) ;
 int ipac_irq (TYPE_1__*,int) ;
 int mISDNisac_irq (struct isac_hw*,int) ;
 int pr_debug (char*,int ,...) ;
 int pr_notice (char*,int ,int,int ) ;
 int smp_processor_id () ;

irqreturn_t
mISDNipac_irq(struct ipac_hw *ipac, int maxloop)
{
 int cnt = maxloop + 1;
 u8 ista, istad;
 struct isac_hw *isac = &ipac->isac;

 if (ipac->type & IPAC_TYPE_IPACX) {
  ista = ReadIPAC(ipac, ISACX_ISTA);
  while (ista && --cnt) {
   pr_debug("%s: ISTA %02x\n", ipac->name, ista);
   if (ista & IPACX__ICA)
    ipac_irq(&ipac->hscx[0], ista);
   if (ista & IPACX__ICB)
    ipac_irq(&ipac->hscx[1], ista);
   if (ista & (ISACX__ICD | ISACX__CIC))
    mISDNisac_irq(&ipac->isac, ista);
   ista = ReadIPAC(ipac, ISACX_ISTA);
  }
 } else if (ipac->type & IPAC_TYPE_IPAC) {
  ista = ReadIPAC(ipac, IPAC_ISTA);
  while (ista && --cnt) {
   pr_debug("%s: ISTA %02x\n", ipac->name, ista);
   if (ista & (IPAC__ICD | IPAC__EXD)) {
    istad = ReadISAC(isac, ISAC_ISTA);
    pr_debug("%s: ISTAD %02x\n", ipac->name, istad);
    if (istad & IPAC_D_TIN2)
     pr_debug("%s TIN2 irq\n", ipac->name);
    if (ista & IPAC__EXD)
     istad |= 1;
    mISDNisac_irq(isac, istad);
   }
   if (ista & (IPAC__ICA | IPAC__EXA))
    ipac_irq(&ipac->hscx[0], ista);
   if (ista & (IPAC__ICB | IPAC__EXB))
    ipac_irq(&ipac->hscx[1], ista);
   ista = ReadIPAC(ipac, IPAC_ISTA);
  }
 } else if (ipac->type & IPAC_TYPE_HSCX) {
  while (--cnt) {
   ista = ReadIPAC(ipac, IPAC_ISTAB + ipac->hscx[1].off);
   pr_debug("%s: B2 ISTA %02x\n", ipac->name, ista);
   if (ista)
    ipac_irq(&ipac->hscx[1], ista);
   istad = ReadISAC(isac, ISAC_ISTA);
   pr_debug("%s: ISTAD %02x\n", ipac->name, istad);
   if (istad)
    mISDNisac_irq(isac, istad);
   if (0 == (ista | istad))
    break;
  }
 }
 if (cnt > maxloop)
  return IRQ_NONE;
 if (cnt < maxloop)
  pr_debug("%s: %d irqloops cpu%d\n", ipac->name,
    maxloop - cnt, smp_processor_id());
 if (maxloop && !cnt)
  pr_notice("%s: %d IRQ LOOP cpu%d\n", ipac->name,
     maxloop, smp_processor_id());
 return IRQ_HANDLED;
}
