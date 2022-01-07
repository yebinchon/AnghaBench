
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ base; } ;
struct stm32_adc_priv {int domain; TYPE_3__* cfg; TYPE_1__ common; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct TYPE_6__ {TYPE_2__* regs; } ;
struct TYPE_5__ {int eoc1_msk; int eoc2_msk; int eoc3_msk; scalar_t__ csr; } ;


 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int generic_handle_irq (int ) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct stm32_adc_priv* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_find_mapping (int ,int) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ stm32_adc_eoc_enabled (struct stm32_adc_priv*,int) ;

__attribute__((used)) static void stm32_adc_irq_handler(struct irq_desc *desc)
{
 struct stm32_adc_priv *priv = irq_desc_get_handler_data(desc);
 struct irq_chip *chip = irq_desc_get_chip(desc);
 u32 status;

 chained_irq_enter(chip, desc);
 status = readl_relaxed(priv->common.base + priv->cfg->regs->csr);
 if (status & priv->cfg->regs->eoc1_msk &&
     stm32_adc_eoc_enabled(priv, 0))
  generic_handle_irq(irq_find_mapping(priv->domain, 0));

 if (status & priv->cfg->regs->eoc2_msk &&
     stm32_adc_eoc_enabled(priv, 1))
  generic_handle_irq(irq_find_mapping(priv->domain, 1));

 if (status & priv->cfg->regs->eoc3_msk &&
     stm32_adc_eoc_enabled(priv, 2))
  generic_handle_irq(irq_find_mapping(priv->domain, 2));

 chained_irq_exit(chip, desc);
}
