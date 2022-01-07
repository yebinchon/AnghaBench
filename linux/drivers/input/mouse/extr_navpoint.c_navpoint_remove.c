
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_device {int irq; } ;
struct platform_device {int dev; } ;
struct navpoint_platform_data {int gpio; } ;
struct navpoint {int input; struct ssp_device* ssp; } ;


 struct navpoint_platform_data* dev_get_platdata (int *) ;
 int free_irq (int ,struct navpoint*) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct navpoint*) ;
 struct navpoint* platform_get_drvdata (struct platform_device*) ;
 int pxa_ssp_free (struct ssp_device*) ;

__attribute__((used)) static int navpoint_remove(struct platform_device *pdev)
{
 const struct navpoint_platform_data *pdata =
     dev_get_platdata(&pdev->dev);
 struct navpoint *navpoint = platform_get_drvdata(pdev);
 struct ssp_device *ssp = navpoint->ssp;

 free_irq(ssp->irq, navpoint);

 input_unregister_device(navpoint->input);
 kfree(navpoint);

 pxa_ssp_free(ssp);

 if (gpio_is_valid(pdata->gpio))
  gpio_free(pdata->gpio);

 return 0;
}
