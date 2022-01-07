
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;


 int EINVAL ;
 int ENODEV ;


 int dev_err (TYPE_1__*,char*) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int ti_am335x_xbar_probe (struct platform_device*) ;
 int ti_dma_xbar_match ;
 int ti_dra7_xbar_probe (struct platform_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ti_dma_xbar_probe(struct platform_device *pdev)
{
 const struct of_device_id *match;
 int ret;

 match = of_match_node(ti_dma_xbar_match, pdev->dev.of_node);
 if (unlikely(!match))
  return -EINVAL;

 switch (*(u32 *)match->data) {
 case 128:
  ret = ti_dra7_xbar_probe(pdev);
  break;
 case 129:
  ret = ti_am335x_xbar_probe(pdev);
  break;
 default:
  dev_err(&pdev->dev, "Unsupported crossbar\n");
  ret = -ENODEV;
  break;
 }

 return ret;
}
