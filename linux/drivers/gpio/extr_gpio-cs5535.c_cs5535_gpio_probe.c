
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct TYPE_3__ {int chip; int lock; struct platform_device* pdev; int base; } ;


 int EIO ;
 int IORESOURCE_IO ;
 TYPE_1__ cs5535_gpio_chip ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,...) ;
 int devm_gpiochip_add_data (int *,int *,TYPE_1__*) ;
 int devm_request_region (int *,int ,int ,int ) ;
 int mask ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int cs5535_gpio_probe(struct platform_device *pdev)
{
 struct resource *res;
 int err = -EIO;
 ulong mask_orig = mask;
 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!res) {
  dev_err(&pdev->dev, "can't fetch device resource info\n");
  return err;
 }

 if (!devm_request_region(&pdev->dev, res->start, resource_size(res),
     pdev->name)) {
  dev_err(&pdev->dev, "can't request region\n");
  return err;
 }


 cs5535_gpio_chip.base = res->start;
 cs5535_gpio_chip.pdev = pdev;
 spin_lock_init(&cs5535_gpio_chip.lock);

 dev_info(&pdev->dev, "reserved resource region %pR\n", res);


 mask &= 0x1F7FFFFF;



 mask &= ~(1 << 28);

 if (mask_orig != mask)
  dev_info(&pdev->dev, "mask changed from 0x%08lX to 0x%08lX\n",
    mask_orig, mask);


 err = devm_gpiochip_add_data(&pdev->dev, &cs5535_gpio_chip.chip,
         &cs5535_gpio_chip);
 if (err)
  return err;

 return 0;
}
