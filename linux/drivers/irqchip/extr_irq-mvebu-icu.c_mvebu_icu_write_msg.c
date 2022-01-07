
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_icu_msi_data {int dummy; } ;
struct mvebu_icu_irq_data {int type; unsigned int icu_group; struct mvebu_icu* icu; } ;
struct mvebu_icu {scalar_t__ base; } ;
struct msi_msg {unsigned int data; scalar_t__ address_hi; scalar_t__ address_lo; } ;
struct msi_desc {int irq; } ;
struct irq_data {scalar_t__ hwirq; struct mvebu_icu_irq_data* chip_data; int domain; } ;


 unsigned int ICU_GROUP_SHIFT ;
 scalar_t__ ICU_INT_CFG (scalar_t__) ;
 unsigned int ICU_INT_ENABLE ;
 unsigned int ICU_IS_EDGE ;
 scalar_t__ ICU_SATA0_ICU_ID ;
 scalar_t__ ICU_SATA1_ICU_ID ;
 int IRQ_TYPE_EDGE_RISING ;
 struct irq_data* irq_get_irq_data (int ) ;
 int mvebu_icu_init (struct mvebu_icu*,struct mvebu_icu_msi_data*,struct msi_msg*) ;
 struct mvebu_icu_msi_data* platform_msi_get_host_data (int ) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static void mvebu_icu_write_msg(struct msi_desc *desc, struct msi_msg *msg)
{
 struct irq_data *d = irq_get_irq_data(desc->irq);
 struct mvebu_icu_msi_data *msi_data = platform_msi_get_host_data(d->domain);
 struct mvebu_icu_irq_data *icu_irqd = d->chip_data;
 struct mvebu_icu *icu = icu_irqd->icu;
 unsigned int icu_int;

 if (msg->address_lo || msg->address_hi) {

  mvebu_icu_init(icu, msi_data, msg);

  icu_int = msg->data | ICU_INT_ENABLE;
  if (icu_irqd->type & IRQ_TYPE_EDGE_RISING)
   icu_int |= ICU_IS_EDGE;
  icu_int |= icu_irqd->icu_group << ICU_GROUP_SHIFT;
 } else {

  icu_int = 0;
 }

 writel_relaxed(icu_int, icu->base + ICU_INT_CFG(d->hwirq));
 if (d->hwirq == ICU_SATA0_ICU_ID || d->hwirq == ICU_SATA1_ICU_ID) {
  writel_relaxed(icu_int,
          icu->base + ICU_INT_CFG(ICU_SATA0_ICU_ID));
  writel_relaxed(icu_int,
          icu->base + ICU_INT_CFG(ICU_SATA1_ICU_ID));
 }
}
