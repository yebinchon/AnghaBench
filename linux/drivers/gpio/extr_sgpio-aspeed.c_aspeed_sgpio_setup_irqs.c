
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct gpio_irq_chip {int* parents; int num_parents; struct aspeed_sgpio* parent_handler_data; int parent_handler; int default_type; int handler; int * chip; } ;
struct aspeed_sgpio_bank {int dummy; } ;
struct TYPE_2__ {struct gpio_irq_chip irq; } ;
struct aspeed_sgpio {int irq; TYPE_1__ chip; } ;


 int ARRAY_SIZE (struct aspeed_sgpio_bank*) ;
 int IRQ_TYPE_NONE ;
 struct aspeed_sgpio_bank* aspeed_sgpio_banks ;
 int aspeed_sgpio_irq_handler ;
 int aspeed_sgpio_irqchip ;
 int bank_reg (struct aspeed_sgpio*,struct aspeed_sgpio_bank const*,int ) ;
 int handle_bad_irq ;
 int iowrite32 (int,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int reg_irq_enable ;
 int reg_irq_status ;
 int reg_irq_type0 ;
 int reg_irq_type1 ;
 int reg_irq_type2 ;

__attribute__((used)) static int aspeed_sgpio_setup_irqs(struct aspeed_sgpio *gpio,
       struct platform_device *pdev)
{
 int rc, i;
 const struct aspeed_sgpio_bank *bank;
 struct gpio_irq_chip *irq;

 rc = platform_get_irq(pdev, 0);
 if (rc < 0)
  return rc;

 gpio->irq = rc;


 for (i = 0; i < ARRAY_SIZE(aspeed_sgpio_banks); i++) {
  bank = &aspeed_sgpio_banks[i];

  iowrite32(0x00000000, bank_reg(gpio, bank, reg_irq_enable));

  iowrite32(0xffffffff, bank_reg(gpio, bank, reg_irq_status));
 }

 irq = &gpio->chip.irq;
 irq->chip = &aspeed_sgpio_irqchip;
 irq->handler = handle_bad_irq;
 irq->default_type = IRQ_TYPE_NONE;
 irq->parent_handler = aspeed_sgpio_irq_handler;
 irq->parent_handler_data = gpio;
 irq->parents = &gpio->irq;
 irq->num_parents = 1;


 for (i = 0; i < ARRAY_SIZE(aspeed_sgpio_banks); i++) {
  bank = &aspeed_sgpio_banks[i];

  iowrite32(0x00000000, bank_reg(gpio, bank, reg_irq_type0));

  iowrite32(0x00000000, bank_reg(gpio, bank, reg_irq_type1));

  iowrite32(0xffffffff, bank_reg(gpio, bank, reg_irq_type2));

  iowrite32(0xffffffff, bank_reg(gpio, bank, reg_irq_enable));
 }

 return 0;
}
