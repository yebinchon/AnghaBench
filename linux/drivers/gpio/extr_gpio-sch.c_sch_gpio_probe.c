
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ngpio; int * parent; int label; } ;
struct sch_gpio {int resume_base; TYPE_1__ chip; int iobase; int lock; } ;
struct resource {int start; } ;
struct platform_device {int id; int dev; int name; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GEN ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;




 int dev_name (int *) ;
 int devm_gpiochip_add_data (int *,TYPE_1__*,struct sch_gpio*) ;
 struct sch_gpio* devm_kzalloc (int *,int,int ) ;
 int devm_request_region (int *,int ,int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sch_gpio*) ;
 int resource_size (struct resource*) ;
 TYPE_1__ sch_gpio_chip ;
 int sch_gpio_reg_set (struct sch_gpio*,int,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int sch_gpio_probe(struct platform_device *pdev)
{
 struct sch_gpio *sch;
 struct resource *res;

 sch = devm_kzalloc(&pdev->dev, sizeof(*sch), GFP_KERNEL);
 if (!sch)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!res)
  return -EBUSY;

 if (!devm_request_region(&pdev->dev, res->start, resource_size(res),
     pdev->name))
  return -EBUSY;

 spin_lock_init(&sch->lock);
 sch->iobase = res->start;
 sch->chip = sch_gpio_chip;
 sch->chip.label = dev_name(&pdev->dev);
 sch->chip.parent = &pdev->dev;

 switch (pdev->id) {
 case 128:
  sch->resume_base = 10;
  sch->chip.ngpio = 14;






  sch_gpio_reg_set(sch, 8, GEN, 1);
  sch_gpio_reg_set(sch, 9, GEN, 1);




  sch_gpio_reg_set(sch, 13, GEN, 1);
  break;

 case 130:
  sch->resume_base = 5;
  sch->chip.ngpio = 14;
  break;

 case 131:
  sch->resume_base = 21;
  sch->chip.ngpio = 30;
  break;

 case 129:
  sch->resume_base = 2;
  sch->chip.ngpio = 8;
  break;

 default:
  return -ENODEV;
 }

 platform_set_drvdata(pdev, sch);

 return devm_gpiochip_add_data(&pdev->dev, &sch->chip, sch);
}
