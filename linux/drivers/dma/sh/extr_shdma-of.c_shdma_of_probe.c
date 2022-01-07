
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_dev_auxdata {int dummy; } ;


 struct of_dev_auxdata* dev_get_platdata (TYPE_1__*) ;
 int of_dma_controller_free (int ) ;
 int of_dma_controller_register (int ,int ,struct platform_device*) ;
 int of_platform_populate (int ,int *,struct of_dev_auxdata const*,TYPE_1__*) ;
 int shdma_of_xlate ;

__attribute__((used)) static int shdma_of_probe(struct platform_device *pdev)
{
 const struct of_dev_auxdata *lookup = dev_get_platdata(&pdev->dev);
 int ret;

 ret = of_dma_controller_register(pdev->dev.of_node,
      shdma_of_xlate, pdev);
 if (ret < 0)
  return ret;

 ret = of_platform_populate(pdev->dev.of_node, ((void*)0), lookup, &pdev->dev);
 if (ret < 0)
  of_dma_controller_free(pdev->dev.of_node);

 return ret;
}
