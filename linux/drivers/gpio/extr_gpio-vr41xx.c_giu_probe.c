
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int id; int dev; } ;
struct irq_chip {int dummy; } ;
struct TYPE_3__ {int ngpio; int * parent; } ;


 int EBUSY ;
 int ENODEV ;
 int GIUINTENH ;
 int GIUINTENL ;
 int GIUINTTYPH ;
 int GIUINTTYPL ;
 unsigned int GIUINT_HIGH_OFFSET ;
 unsigned int GIU_IRQ_BASE ;
 unsigned int GIU_IRQ_LAST ;



 int GPIO_HAS_INTERRUPT_EDGE_SELECT ;
 int GPIO_HAS_PULLUPDOWN_IO ;
 unsigned int GPIO_PIN_OF_IRQ (unsigned int) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cascade_irq (int,int ) ;
 int dev_err (int *,char*,int) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int giu_base ;
 int giu_flags ;
 int giu_get_irq ;
 unsigned int giu_read (int ) ;
 int giu_write (int ,int ) ;
 struct irq_chip giuint_high_irq_chip ;
 struct irq_chip giuint_low_irq_chip ;
 scalar_t__ gpiochip_add_data (TYPE_1__*,int *) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,struct irq_chip*,int ) ;
 int nr_irqs ;
 int platform_get_irq (struct platform_device*,int ) ;
 TYPE_1__ vr41xx_gpio_chip ;

__attribute__((used)) static int giu_probe(struct platform_device *pdev)
{
 unsigned int trigger, i, pin;
 struct irq_chip *chip;
 int irq;

 switch (pdev->id) {
 case 128:
  giu_flags = GPIO_HAS_PULLUPDOWN_IO;
  vr41xx_gpio_chip.ngpio = 50;
  break;
 case 130:
  vr41xx_gpio_chip.ngpio = 36;
  break;
 case 129:
  giu_flags = GPIO_HAS_INTERRUPT_EDGE_SELECT;
  vr41xx_gpio_chip.ngpio = 48;
  break;
 default:
  dev_err(&pdev->dev, "GIU: unknown ID %d\n", pdev->id);
  return -ENODEV;
 }

 giu_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(giu_base))
  return PTR_ERR(giu_base);

 vr41xx_gpio_chip.parent = &pdev->dev;

 if (gpiochip_add_data(&vr41xx_gpio_chip, ((void*)0)))
  return -ENODEV;

 giu_write(GIUINTENL, 0);
 giu_write(GIUINTENH, 0);

 trigger = giu_read(GIUINTTYPH) << 16;
 trigger |= giu_read(GIUINTTYPL);
 for (i = GIU_IRQ_BASE; i <= GIU_IRQ_LAST; i++) {
  pin = GPIO_PIN_OF_IRQ(i);
  if (pin < GIUINT_HIGH_OFFSET)
   chip = &giuint_low_irq_chip;
  else
   chip = &giuint_high_irq_chip;

  if (trigger & (1 << pin))
   irq_set_chip_and_handler(i, chip, handle_edge_irq);
  else
   irq_set_chip_and_handler(i, chip, handle_level_irq);

 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0 || irq >= nr_irqs)
  return -EBUSY;

 return cascade_irq(irq, giu_get_irq);
}
