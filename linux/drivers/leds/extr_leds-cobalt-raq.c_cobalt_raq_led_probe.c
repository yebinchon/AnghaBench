
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;


 int EBUSY ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int * devm_ioremap (int *,int ,int ) ;
 int led_classdev_register (int *,int *) ;
 int led_classdev_unregister (int *) ;
 int * led_port ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int raq_power_off_led ;
 int raq_web_led ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int cobalt_raq_led_probe(struct platform_device *pdev)
{
 struct resource *res;
 int retval;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -EBUSY;

 led_port = devm_ioremap(&pdev->dev, res->start, resource_size(res));
 if (!led_port)
  return -ENOMEM;

 retval = led_classdev_register(&pdev->dev, &raq_power_off_led);
 if (retval)
  goto err_null;

 retval = led_classdev_register(&pdev->dev, &raq_web_led);
 if (retval)
  goto err_unregister;

 return 0;

err_unregister:
 led_classdev_unregister(&raq_power_off_led);

err_null:
 led_port = ((void*)0);

 return retval;
}
