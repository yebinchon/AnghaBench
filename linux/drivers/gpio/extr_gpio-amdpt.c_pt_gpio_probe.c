
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; int ngpio; int free; int request; int owner; } ;
struct pt_gpio_chip {scalar_t__ reg_base; TYPE_1__ gc; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 int ACPI_HANDLE (struct device*) ;
 int BGPIOF_READ_OUTPUT_REG_SET ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ PT_CLOCKRATE_REG ;
 scalar_t__ PT_DIRECTION_REG ;
 scalar_t__ PT_INPUTDATA_REG ;
 scalar_t__ PT_OUTPUTDATA_REG ;
 scalar_t__ PT_SYNC_REG ;
 int PT_TOTAL_GPIO ;
 int THIS_MODULE ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 int bgpio_init (TYPE_1__*,struct device*,int,scalar_t__,scalar_t__,int *,scalar_t__,int *,int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 struct pt_gpio_chip* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int gpiochip_add_data (TYPE_1__*,struct pt_gpio_chip*) ;
 int platform_set_drvdata (struct platform_device*,struct pt_gpio_chip*) ;
 int pt_gpio_free ;
 int pt_gpio_request ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int pt_gpio_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct acpi_device *acpi_dev;
 acpi_handle handle = ACPI_HANDLE(dev);
 struct pt_gpio_chip *pt_gpio;
 int ret = 0;

 if (acpi_bus_get_device(handle, &acpi_dev)) {
  dev_err(dev, "PT GPIO device node not found\n");
  return -ENODEV;
 }

 pt_gpio = devm_kzalloc(dev, sizeof(struct pt_gpio_chip), GFP_KERNEL);
 if (!pt_gpio)
  return -ENOMEM;

 pt_gpio->reg_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(pt_gpio->reg_base)) {
  dev_err(dev, "Failed to map MMIO resource for PT GPIO.\n");
  return PTR_ERR(pt_gpio->reg_base);
 }

 ret = bgpio_init(&pt_gpio->gc, dev, 4,
    pt_gpio->reg_base + PT_INPUTDATA_REG,
    pt_gpio->reg_base + PT_OUTPUTDATA_REG, ((void*)0),
    pt_gpio->reg_base + PT_DIRECTION_REG, ((void*)0),
    BGPIOF_READ_OUTPUT_REG_SET);
 if (ret) {
  dev_err(dev, "bgpio_init failed\n");
  return ret;
 }

 pt_gpio->gc.owner = THIS_MODULE;
 pt_gpio->gc.request = pt_gpio_request;
 pt_gpio->gc.free = pt_gpio_free;
 pt_gpio->gc.ngpio = PT_TOTAL_GPIO;



 ret = gpiochip_add_data(&pt_gpio->gc, pt_gpio);
 if (ret) {
  dev_err(dev, "Failed to register GPIO lib\n");
  return ret;
 }

 platform_set_drvdata(pdev, pt_gpio);


 writel(0, pt_gpio->reg_base + PT_SYNC_REG);
 writel(0, pt_gpio->reg_base + PT_CLOCKRATE_REG);

 dev_dbg(dev, "PT GPIO driver loaded\n");
 return ret;
}
