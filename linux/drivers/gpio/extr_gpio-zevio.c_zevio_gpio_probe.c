
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ngpio; TYPE_3__* parent; } ;
struct TYPE_7__ {TYPE_1__ gc; } ;
struct zevio_gpio {TYPE_2__ chip; int lock; } ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ZEVIO_GPIO_INT_MASK ;
 int dev_dbg (TYPE_3__*,char*) ;
 int dev_err (TYPE_3__*,char*,int) ;
 struct zevio_gpio* devm_kzalloc (TYPE_3__*,int,int ) ;
 int of_mm_gpiochip_add_data (int ,TYPE_2__*,struct zevio_gpio*) ;
 int platform_set_drvdata (struct platform_device*,struct zevio_gpio*) ;
 int spin_lock_init (int *) ;
 TYPE_1__ zevio_gpio_chip ;
 int zevio_gpio_port_set (struct zevio_gpio*,int,int ,int) ;

__attribute__((used)) static int zevio_gpio_probe(struct platform_device *pdev)
{
 struct zevio_gpio *controller;
 int status, i;

 controller = devm_kzalloc(&pdev->dev, sizeof(*controller), GFP_KERNEL);
 if (!controller)
  return -ENOMEM;

 platform_set_drvdata(pdev, controller);


 controller->chip.gc = zevio_gpio_chip;
 controller->chip.gc.parent = &pdev->dev;

 status = of_mm_gpiochip_add_data(pdev->dev.of_node,
      &(controller->chip),
      controller);
 if (status) {
  dev_err(&pdev->dev, "failed to add gpiochip: %d\n", status);
  return status;
 }

 spin_lock_init(&controller->lock);


 for (i = 0; i < controller->chip.gc.ngpio; i += 8)
  zevio_gpio_port_set(controller, i, ZEVIO_GPIO_INT_MASK, 0xFF);

 dev_dbg(controller->chip.gc.parent, "ZEVIO GPIO controller set up!\n");

 return 0;
}
