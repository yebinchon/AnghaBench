
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct irq_data {int irq; } ;
struct TYPE_2__ {unsigned int type; } ;
struct irq_chip_type {unsigned int type; TYPE_1__ regs; } ;
struct irq_chip_generic {unsigned int num_ct; struct irq_chip_type* chip_types; } ;


 int EBADR ;
 unsigned int IRQF_TRIGGER_MASK ;
 int IRQ_SET_MASK_OK ;





 unsigned int SUNXI_NMI_SRC_TYPE_MASK ;
 unsigned int SUNXI_SRC_TYPE_EDGE_FALLING ;
 unsigned int SUNXI_SRC_TYPE_EDGE_RISING ;
 unsigned int SUNXI_SRC_TYPE_LEVEL_HIGH ;
 unsigned int SUNXI_SRC_TYPE_LEVEL_LOW ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 int irq_setup_alt_chip (struct irq_data*,unsigned int) ;
 int irqd_set_trigger_type (struct irq_data*,unsigned int) ;
 int pr_err (char*,int ) ;
 unsigned int sunxi_sc_nmi_read (struct irq_chip_generic*,unsigned int) ;
 int sunxi_sc_nmi_write (struct irq_chip_generic*,unsigned int,unsigned int) ;

__attribute__((used)) static int sunxi_sc_nmi_set_type(struct irq_data *data, unsigned int flow_type)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(data);
 struct irq_chip_type *ct = gc->chip_types;
 u32 src_type_reg;
 u32 ctrl_off = ct->regs.type;
 unsigned int src_type;
 unsigned int i;

 irq_gc_lock(gc);

 switch (flow_type & IRQF_TRIGGER_MASK) {
 case 132:
  src_type = SUNXI_SRC_TYPE_EDGE_FALLING;
  break;
 case 131:
  src_type = SUNXI_SRC_TYPE_EDGE_RISING;
  break;
 case 130:
  src_type = SUNXI_SRC_TYPE_LEVEL_HIGH;
  break;
 case 128:
 case 129:
  src_type = SUNXI_SRC_TYPE_LEVEL_LOW;
  break;
 default:
  irq_gc_unlock(gc);
  pr_err("Cannot assign multiple trigger modes to IRQ %d.\n",
   data->irq);
  return -EBADR;
 }

 irqd_set_trigger_type(data, flow_type);
 irq_setup_alt_chip(data, flow_type);

 for (i = 0; i < gc->num_ct; i++, ct++)
  if (ct->type & flow_type)
   ctrl_off = ct->regs.type;

 src_type_reg = sunxi_sc_nmi_read(gc, ctrl_off);
 src_type_reg &= ~SUNXI_NMI_SRC_TYPE_MASK;
 src_type_reg |= src_type;
 sunxi_sc_nmi_write(gc, ctrl_off, src_type_reg);

 irq_gc_unlock(gc);

 return IRQ_SET_MASK_OK;
}
