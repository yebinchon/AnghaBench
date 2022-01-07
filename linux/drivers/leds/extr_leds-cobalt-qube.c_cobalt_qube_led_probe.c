
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;


 int EBUSY ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int LED_FRONT_LEFT ;
 int LED_FRONT_RIGHT ;
 int devm_ioremap (int *,int ,int ) ;
 int devm_led_classdev_register (int *,int *) ;
 int led_port ;
 int led_value ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int qube_front_led ;
 int resource_size (struct resource*) ;
 int writeb (int,int ) ;

__attribute__((used)) static int cobalt_qube_led_probe(struct platform_device *pdev)
{
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -EBUSY;

 led_port = devm_ioremap(&pdev->dev, res->start, resource_size(res));
 if (!led_port)
  return -ENOMEM;

 led_value = LED_FRONT_LEFT | LED_FRONT_RIGHT;
 writeb(led_value, led_port);

 return devm_led_classdev_register(&pdev->dev, &qube_front_led);
}
