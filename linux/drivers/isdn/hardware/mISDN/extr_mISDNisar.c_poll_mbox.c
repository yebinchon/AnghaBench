
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isar_hw {int (* read_reg ) (int ,int ) ;int clsb; int name; int hw; } ;


 int ISAR_IRQBIT ;
 int ISAR_IRQSTA ;
 int get_irq_infos (struct isar_hw*) ;
 int pr_debug (char*,int ,int ,int) ;
 int rcv_mbox (struct isar_hw*,int *) ;
 int stub1 (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
poll_mbox(struct isar_hw *isar, int maxdelay)
{
 int t = maxdelay;
 u8 irq;

 irq = isar->read_reg(isar->hw, ISAR_IRQBIT);
 while (t && !(irq & ISAR_IRQSTA)) {
  udelay(1);
  t--;
 }
 if (t) {
  get_irq_infos(isar);
  rcv_mbox(isar, ((void*)0));
 }
 pr_debug("%s: pulled %d bytes after %d us\n",
   isar->name, isar->clsb, maxdelay - t);
 return t;
}
