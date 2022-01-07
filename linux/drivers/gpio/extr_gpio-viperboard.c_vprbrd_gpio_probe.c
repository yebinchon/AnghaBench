
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* label; int base; int ngpio; int can_sleep; TYPE_1__* parent; int direction_output; int direction_input; int get; int set; void* owner; } ;
struct vprbrd_gpio {TYPE_3__ gpiob; TYPE_3__ gpioa; struct vprbrd* vb; } ;
struct vprbrd {int dummy; } ;
struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* THIS_MODULE ;
 int dev_err (TYPE_1__*,char*) ;
 struct vprbrd* dev_get_drvdata (int ) ;
 int devm_gpiochip_add_data (TYPE_1__*,TYPE_3__*,struct vprbrd_gpio*) ;
 struct vprbrd_gpio* devm_kzalloc (TYPE_1__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct vprbrd_gpio*) ;
 int vprbrd_gpioa_direction_input ;
 int vprbrd_gpioa_direction_output ;
 int vprbrd_gpioa_get ;
 int vprbrd_gpioa_set ;
 int vprbrd_gpiob_direction_input ;
 int vprbrd_gpiob_direction_output ;
 int vprbrd_gpiob_get ;
 int vprbrd_gpiob_set ;

__attribute__((used)) static int vprbrd_gpio_probe(struct platform_device *pdev)
{
 struct vprbrd *vb = dev_get_drvdata(pdev->dev.parent);
 struct vprbrd_gpio *vb_gpio;
 int ret;

 vb_gpio = devm_kzalloc(&pdev->dev, sizeof(*vb_gpio), GFP_KERNEL);
 if (vb_gpio == ((void*)0))
  return -ENOMEM;

 vb_gpio->vb = vb;

 vb_gpio->gpioa.label = "viperboard gpio a";
 vb_gpio->gpioa.parent = &pdev->dev;
 vb_gpio->gpioa.owner = THIS_MODULE;
 vb_gpio->gpioa.base = -1;
 vb_gpio->gpioa.ngpio = 16;
 vb_gpio->gpioa.can_sleep = 1;
 vb_gpio->gpioa.set = vprbrd_gpioa_set;
 vb_gpio->gpioa.get = vprbrd_gpioa_get;
 vb_gpio->gpioa.direction_input = vprbrd_gpioa_direction_input;
 vb_gpio->gpioa.direction_output = vprbrd_gpioa_direction_output;
 ret = devm_gpiochip_add_data(&pdev->dev, &vb_gpio->gpioa, vb_gpio);
 if (ret < 0) {
  dev_err(vb_gpio->gpioa.parent, "could not add gpio a");
  return ret;
 }


 vb_gpio->gpiob.label = "viperboard gpio b";
 vb_gpio->gpiob.parent = &pdev->dev;
 vb_gpio->gpiob.owner = THIS_MODULE;
 vb_gpio->gpiob.base = -1;
 vb_gpio->gpiob.ngpio = 16;
 vb_gpio->gpiob.can_sleep = 1;
 vb_gpio->gpiob.set = vprbrd_gpiob_set;
 vb_gpio->gpiob.get = vprbrd_gpiob_get;
 vb_gpio->gpiob.direction_input = vprbrd_gpiob_direction_input;
 vb_gpio->gpiob.direction_output = vprbrd_gpiob_direction_output;
 ret = devm_gpiochip_add_data(&pdev->dev, &vb_gpio->gpiob, vb_gpio);
 if (ret < 0) {
  dev_err(vb_gpio->gpiob.parent, "could not add gpio b");
  return ret;
 }

 platform_set_drvdata(pdev, vb_gpio);

 return ret;
}
