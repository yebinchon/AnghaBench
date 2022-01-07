
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int base; int ngpio; int label; int set_multiple; int set; int get; int direction_output; int direction_input; TYPE_1__* parent; } ;
struct xgpio_instance {int* gpio_state; int* gpio_dir; int* gpio_width; TYPE_3__ gc; int regs; int * gpio_lock; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_name (TYPE_1__*) ;
 int devm_gpiochip_add_data (TYPE_1__*,TYPE_3__*,struct xgpio_instance*) ;
 struct xgpio_instance* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 int platform_set_drvdata (struct platform_device*,struct xgpio_instance*) ;
 int spin_lock_init (int *) ;
 int xgpio_dir_in ;
 int xgpio_dir_out ;
 int xgpio_get ;
 int xgpio_save_regs (struct xgpio_instance*) ;
 int xgpio_set ;
 int xgpio_set_multiple ;

__attribute__((used)) static int xgpio_probe(struct platform_device *pdev)
{
 struct xgpio_instance *chip;
 int status = 0;
 struct device_node *np = pdev->dev.of_node;
 u32 is_dual;

 chip = devm_kzalloc(&pdev->dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 platform_set_drvdata(pdev, chip);


 of_property_read_u32(np, "xlnx,dout-default", &chip->gpio_state[0]);


 if (of_property_read_u32(np, "xlnx,tri-default", &chip->gpio_dir[0]))
  chip->gpio_dir[0] = 0xFFFFFFFF;





 if (of_property_read_u32(np, "xlnx,gpio-width", &chip->gpio_width[0]))
  chip->gpio_width[0] = 32;

 spin_lock_init(&chip->gpio_lock[0]);

 if (of_property_read_u32(np, "xlnx,is-dual", &is_dual))
  is_dual = 0;

 if (is_dual) {

  of_property_read_u32(np, "xlnx,dout-default-2",
         &chip->gpio_state[1]);


  if (of_property_read_u32(np, "xlnx,tri-default-2",
      &chip->gpio_dir[1]))
   chip->gpio_dir[1] = 0xFFFFFFFF;





  if (of_property_read_u32(np, "xlnx,gpio2-width",
      &chip->gpio_width[1]))
   chip->gpio_width[1] = 32;

  spin_lock_init(&chip->gpio_lock[1]);
 }

 chip->gc.base = -1;
 chip->gc.ngpio = chip->gpio_width[0] + chip->gpio_width[1];
 chip->gc.parent = &pdev->dev;
 chip->gc.direction_input = xgpio_dir_in;
 chip->gc.direction_output = xgpio_dir_out;
 chip->gc.get = xgpio_get;
 chip->gc.set = xgpio_set;
 chip->gc.set_multiple = xgpio_set_multiple;

 chip->gc.label = dev_name(&pdev->dev);

 chip->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(chip->regs)) {
  dev_err(&pdev->dev, "failed to ioremap memory resource\n");
  return PTR_ERR(chip->regs);
 }

 xgpio_save_regs(chip);

 status = devm_gpiochip_add_data(&pdev->dev, &chip->gc, chip);
 if (status) {
  dev_err(&pdev->dev, "failed to add GPIO chip\n");
  return status;
 }

 return 0;
}
