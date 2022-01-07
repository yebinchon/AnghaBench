
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_gpio_id {int type; int gpio_nums; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct platform_device {int dummy; } ;


 int EINVAL ;
 int gpio_type ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;

__attribute__((used)) static int pxa_gpio_nums(struct platform_device *pdev)
{
 const struct platform_device_id *id = platform_get_device_id(pdev);
 struct pxa_gpio_id *pxa_id = (struct pxa_gpio_id *)id->driver_data;
 int count = 0;

 switch (pxa_id->type) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 134:
 case 135:
 case 133:
  gpio_type = pxa_id->type;
  count = pxa_id->gpio_nums - 1;
  break;
 default:
  count = -EINVAL;
  break;
 }
 return count;
}
