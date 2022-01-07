
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mpc8xxx_gpio_devtype {int (* gpio_dir_in_init ) (struct gpio_chip*) ;scalar_t__ gpio_get; scalar_t__ gpio_dir_out; int irq_set_type; } ;
struct gpio_chip {int (* write_reg ) (scalar_t__,int) ;int to_irq; scalar_t__ get; scalar_t__ direction_output; } ;
struct mpc8xxx_gpio_chip {scalar_t__ regs; int irqn; int irq; scalar_t__ direction_output; struct gpio_chip gc; int lock; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int irq_set_type; } ;


 int BGPIOF_BIG_ENDIAN ;
 int BGPIOF_BIG_ENDIAN_BYTE_ORDER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GPIO_DAT ;
 scalar_t__ GPIO_DIR ;
 scalar_t__ GPIO_IER ;
 scalar_t__ GPIO_IMR ;
 int MPC8XXX_GPIO_PINS ;
 int bgpio_init (struct gpio_chip*,TYPE_1__*,int,scalar_t__,int *,int *,scalar_t__,int *,int) ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct mpc8xxx_gpio_chip* devm_kzalloc (TYPE_1__*,int,int ) ;
 int gpiochip_add_data (struct gpio_chip*,struct mpc8xxx_gpio_chip*) ;
 int iounmap (scalar_t__) ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct mpc8xxx_gpio_chip*) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int irq_set_chained_handler_and_data (int ,int ,struct mpc8xxx_gpio_chip*) ;
 struct mpc8xxx_gpio_devtype mpc8xxx_gpio_devtype_default ;
 int mpc8xxx_gpio_irq_cascade ;
 int mpc8xxx_gpio_irq_ops ;
 int mpc8xxx_gpio_to_irq ;
 TYPE_2__ mpc8xxx_irq_chip ;
 struct mpc8xxx_gpio_devtype* of_device_get_match_data (TYPE_1__*) ;
 scalar_t__ of_iomap (struct device_node*,int ) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct mpc8xxx_gpio_chip*) ;
 int pr_err (char*,struct device_node*,int) ;
 int raw_spin_lock_init (int *) ;
 int stub1 (scalar_t__,int) ;
 int stub2 (scalar_t__,int) ;
 int stub3 (struct gpio_chip*) ;

__attribute__((used)) static int mpc8xxx_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct mpc8xxx_gpio_chip *mpc8xxx_gc;
 struct gpio_chip *gc;
 const struct mpc8xxx_gpio_devtype *devtype =
  of_device_get_match_data(&pdev->dev);
 int ret;

 mpc8xxx_gc = devm_kzalloc(&pdev->dev, sizeof(*mpc8xxx_gc), GFP_KERNEL);
 if (!mpc8xxx_gc)
  return -ENOMEM;

 platform_set_drvdata(pdev, mpc8xxx_gc);

 raw_spin_lock_init(&mpc8xxx_gc->lock);

 mpc8xxx_gc->regs = of_iomap(np, 0);
 if (!mpc8xxx_gc->regs)
  return -ENOMEM;

 gc = &mpc8xxx_gc->gc;

 if (of_property_read_bool(np, "little-endian")) {
  ret = bgpio_init(gc, &pdev->dev, 4,
     mpc8xxx_gc->regs + GPIO_DAT,
     ((void*)0), ((void*)0),
     mpc8xxx_gc->regs + GPIO_DIR, ((void*)0),
     BGPIOF_BIG_ENDIAN);
  if (ret)
   goto err;
  dev_dbg(&pdev->dev, "GPIO registers are LITTLE endian\n");
 } else {
  ret = bgpio_init(gc, &pdev->dev, 4,
     mpc8xxx_gc->regs + GPIO_DAT,
     ((void*)0), ((void*)0),
     mpc8xxx_gc->regs + GPIO_DIR, ((void*)0),
     BGPIOF_BIG_ENDIAN
     | BGPIOF_BIG_ENDIAN_BYTE_ORDER);
  if (ret)
   goto err;
  dev_dbg(&pdev->dev, "GPIO registers are BIG endian\n");
 }

 mpc8xxx_gc->direction_output = gc->direction_output;

 if (!devtype)
  devtype = &mpc8xxx_gpio_devtype_default;





 mpc8xxx_irq_chip.irq_set_type = devtype->irq_set_type;

 if (devtype->gpio_dir_out)
  gc->direction_output = devtype->gpio_dir_out;
 if (devtype->gpio_get)
  gc->get = devtype->gpio_get;

 gc->to_irq = mpc8xxx_gpio_to_irq;

 ret = gpiochip_add_data(gc, mpc8xxx_gc);
 if (ret) {
  pr_err("%pOF: GPIO chip registration failed with status %d\n",
         np, ret);
  goto err;
 }

 mpc8xxx_gc->irqn = irq_of_parse_and_map(np, 0);
 if (!mpc8xxx_gc->irqn)
  return 0;

 mpc8xxx_gc->irq = irq_domain_add_linear(np, MPC8XXX_GPIO_PINS,
     &mpc8xxx_gpio_irq_ops, mpc8xxx_gc);
 if (!mpc8xxx_gc->irq)
  return 0;


 gc->write_reg(mpc8xxx_gc->regs + GPIO_IER, 0xffffffff);
 gc->write_reg(mpc8xxx_gc->regs + GPIO_IMR, 0);

 if (devtype->gpio_dir_in_init)
  devtype->gpio_dir_in_init(gc);

 irq_set_chained_handler_and_data(mpc8xxx_gc->irqn,
      mpc8xxx_gpio_irq_cascade, mpc8xxx_gc);
 return 0;
err:
 iounmap(mpc8xxx_gc->regs);
 return ret;
}
